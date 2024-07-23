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
        NotificationCenter.default.removeObserver(
            UIAccessibility.buttonShapesEnabledStatusDidChangeNotification
        )
    }

    private func initialisation() {
        titleLabel?.numberOfLines = 0
        titleLabel?.lineBreakMode = .byWordWrapping
        titleLabel?.adjustsFontForContentSizeCategory = true

        viewModelUpdate()
        buttonConfigurationUpdate()

        configureButtonShapesStyle()
        registerNotifications()
        configureCornerRadius()
    }

    public override func didUpdateFocus(in context: UIFocusUpdateContext,
                                        with coordinator: UIFocusAnimationCoordinator) {
        super.didUpdateFocus(in: context, with: coordinator)
        configureBackgroundColor()
    }

    private func addNewAction(_ action: @escaping () async throws -> Void) {
        // future ticket - add loading state handling
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
            let value = newValue ? 0.99 : 1
            layer.setAffineTransform(.init(scaleX: value, y: value))
        } didSet {
            configureBackgroundColor()
        }
    }

    public override var intrinsicContentSize: CGSize {
        let titlesize = titleLabel?.intrinsicContentSize ?? .zero
        return CGSize(
            width: titlesize.width + contentEdgeInsets.horizontal,
            height: titlesize.height + contentEdgeInsets.vertical
        )
    }

    private func registerNotifications() {
        NotificationCenter.default.addObserver(
            forName: UIAccessibility.buttonShapesEnabledStatusDidChangeNotification,
            object: nil,
            queue: nil,
            using: { [weak self] _ in
                self?.configureButtonShapesStyle()
           }
        )
    }

    public override func accessibilityElementDidLoseFocus() {
        super.accessibilityElementDidLoseFocus()
        setTitleColor(buttonConfiguration.titleColorNormal, for: .normal)
        configureBackgroundColor(state: .normal)
    }

    public override func accessibilityElementDidBecomeFocused() {
        super.accessibilityElementDidBecomeFocused()
        setTitleColor(buttonConfiguration.titleColorFocused, for: .normal)
        configureBackgroundColor(state: .focused)
    }

    public override func layoutSubviews() {
        super.layoutSubviews()

        guard let width = titleLabel?.frame.width else { return }
        titleLabel?.preferredMaxLayoutWidth = width

        updateConstraints()
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
        configureBackgroundColor()
        configureAlignment()
        configureInsets()
        configureCornerRadius()
    }

    private func configureFonts() {
        titleLabel?.font = buttonConfiguration.titleFont
        setTitleColor(buttonConfiguration.titleColorNormal, for: .normal)
        setTitleColor(buttonConfiguration.titleColorHighlighted, for: .highlighted)
        setTitleColor(buttonConfiguration.titleColorFocused, for: .focused)
    }

    private func configureBackgroundColor(state: UIControl.State? = nil) {
        let localState = state ?? self.state

        let color: UIColor

        if localState == .focused {
            color = buttonConfiguration.backgroundColorFocused
        } else {
            color = UIAccessibility.buttonShapesEnabled ?
            buttonConfiguration.accessibilityButtonShapesColor(for: localState) :
            buttonConfiguration.backgroundColor(for: localState)
        }
        backgroundColor = color
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

        configureBackgroundColor()
        if UIAccessibility.buttonShapesEnabled {
            if contentEdgeInsets.left < 4 {
                contentEdgeInsets = .init(
                    top: 4,
                    left: 4,
                    bottom: 4,
                    right: 4
                )
            }
        } else {
            contentEdgeInsets = buttonConfiguration.contentEdgeInsets
        }
    }
}
