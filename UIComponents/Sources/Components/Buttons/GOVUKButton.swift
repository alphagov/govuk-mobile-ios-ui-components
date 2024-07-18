import UIKit

final public class GOVUKButton: UIButton {
    public var buttonConfiguration: ButtonConfiguration {
        didSet {
            buttonConfigurationUpdate()
        }
    }

    public var viewModel: ButtonViewModel? {
        didSet {
            viewModelUpdate()
        }
    }

    public init(_ configuration: ButtonConfiguration,
                viewModel: ButtonViewModel? = nil) {
        self.viewModel = viewModel
        self.buttonConfiguration = configuration
        super.init(frame: .zero)
        initialisation()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    deinit {
        NotificationCenter.default.removeObserver(UIApplication.willEnterForegroundNotification)
    }

    private func initialisation() {
        titleLabel?.numberOfLines = 0
        titleLabel?.lineBreakMode = .byWordWrapping
        titleLabel?.adjustsFontForContentSizeCategory = true

        viewModelUpdate()
        buttonConfigurationUpdate()

        configureButtonShapesStyle()
        configureNotifications()
        configureCornerRadius()
    }

    private func addNewAction(_ action: @escaping () async throws -> Void) {
        // todo - add loading state handling
        let action = UIAction(
            handler: { _ in
                Task {
                    do {
                        try await action()
                    } catch {
                        // handle errors
                    }
                    // stop loading state
                }

            }
        )
        addAction(action, for: .touchUpInside)
    }

    override public var isHighlighted: Bool {
        willSet {
            if newValue {
                let currentImage = backgroundImage(for: state)
                let currentTitleColor = titleColor(for: state)

                setBackgroundImage(currentImage, for: .highlighted)
                setTitleColor(currentTitleColor, for: .highlighted)

                layer.opacity = 0.7

                layer.setAffineTransform(.init(scaleX: 0.99, y: 0.99))
            } else {
                backgroundColor = backgroundColor?.withAlphaComponent(1)
                layer.opacity = 1
                layer.setAffineTransform(.init(scaleX: 1, y: 1))
            }
        }
    }

    public override var intrinsicContentSize: CGSize {
        let titlesize = titleLabel?.intrinsicContentSize ?? .zero

        return CGSize(width: titlesize.width + contentEdgeInsets.horizontal,
                      height: titlesize.height + contentEdgeInsets.vertical)
    }

    private func configureNotifications() {
        NotificationCenter.default.addObserver(
            forName: UIApplication.willEnterForegroundNotification,
            object: nil,
            queue: nil,
            using: { [weak self] _ in
                self?.layoutSubviews()
            }
        )
    }

    public override func layoutSubviews() {
        super.layoutSubviews()

        guard let width = titleLabel?.frame.width else { return }
        titleLabel?.preferredMaxLayoutWidth = width

        configureCornerRadius()
        updateConstraints()
        configureButtonShapesStyle()
    }

    private func viewModelUpdate() {
        setTitle(viewModel?.localisedTitle, for: .normal)
        removeAllActions()
        if let action = viewModel?.action {
            addNewAction(action)
        }
    }

    private func buttonConfigurationUpdate() {
        configureFonts()
        configureBackgrounds()
        configureAlignment()
        configureInsets()
        configureCornerRadius()
    }

    private func configureFonts() {
        titleLabel?.font = buttonConfiguration.titleFont
        setTitleColor(buttonConfiguration.titleColorNormal, for: .normal)
        setTitleColor(buttonConfiguration.titleColorFocused, for: .focused)
    }

    private func configureBackgrounds() {
        setBackgroundColor(color: buttonConfiguration.backgroundColorNormal, for: .normal)
        setBackgroundColor(color: buttonConfiguration.backgroundColorFocused, for: .focused)
    }

    private func configureAlignment() {
        titleLabel?.textAlignment = buttonConfiguration.textAlignment
        contentHorizontalAlignment = buttonConfiguration.contentHorizontalAlignment
        contentVerticalAlignment = buttonConfiguration.contentVerticalAlignment
    }

    private func configureInsets() {
        contentEdgeInsets = buttonConfiguration.contentEdgeInsets
    }

    private func configureCornerRadius() {
        layer.cornerRadius = buttonConfiguration.cornerRadius
        layer.cornerCurve = .continuous
    }

    private func configureButtonShapesStyle() {
        guard buttonConfiguration.backgroundColorNormal == .clear
        else { return }

        if UIAccessibility.buttonShapesEnabled {
            backgroundColor = buttonConfiguration.accessibilityButtonShapesColor ??
                              .secondarySystemBackground

            if contentEdgeInsets.left < 4 {
                contentEdgeInsets = .init(
                    top: 4,
                    left: 4,
                    bottom: 4,
                    right: 4
                )
            }
        } else {
            backgroundColor = .none
        }
    }
}
