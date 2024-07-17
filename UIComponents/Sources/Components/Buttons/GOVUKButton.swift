import UIKit

final public class GOVUKButton: UIButton {
    lazy var backgroundManager = ButtonBackgroundManager(button: self)
    private var tempColor: UIColor?

    private var privateButtonConfiguration: ButtonConfiguration?
    public var buttonConfiguration: ButtonConfiguration? {
        get { privateButtonConfiguration }
        set {
            if let config = newValue {
                setButton(config: config)
            }
        }
    }

    private var privateViewModel: ButtonViewModel?
    public var viewModel: ButtonViewModel? {
        get { privateViewModel }
        set {
            if let viewModel = newValue {
                viewModelUpdate(viewModel: viewModel)
            }
        }
    }

    private(set) var privateBackgroundColor: UIColor? {
        didSet {
            backgroundColor = privateBackgroundColor
        }
    }

    public override var backgroundColor: UIColor? {
        didSet {
            backgroundManager.hasBackground = backgroundColor == nil ? false : true
            if backgroundColor == UIColor.clear {
                backgroundManager.hasBackground = false
            }
        }
    }

    public override func accessibilityElementDidBecomeFocused() {
        super.accessibilityElementDidBecomeFocused()

        tempColor = backgroundManager.normal

        if backgroundManager.hasBackground {
            self.setBackgroundNormal(color: backgroundManager.focused)

            backgroundColor = tempColor
        }
    }

    public override func accessibilityElementDidLoseFocus() {
        super.accessibilityElementDidLoseFocus()

        self.setBackgroundNormal(color: tempColor)
    }

    public func setBackgroundFocused(color: UIColor?) {
        backgroundManager.focused = color
    }

    public func setBackgroundNormal(color: UIColor?) {
        privateBackgroundColor = color
        backgroundManager.normal = color
    }

    private func viewModelUpdate(viewModel: ButtonViewModel) {
        self.setTitle(viewModel.localisedTitle, for: .normal)

        self.removeAllActions()
        // todo - add loading state handling
        self.addAction(UIAction { _ in
                // start loading state
            Task {
                do {
                    try await viewModel.action()
                } catch {
                        // handle errors
                }
                    // stop loading state
            }
        }, for: .touchUpInside)

        self.privateViewModel = viewModel
    }

    override public var isHighlighted: Bool {
        willSet {
            if newValue {
                let currentState = self.state
                let currentImage = self.backgroundImage(for: currentState)
                let currentTitleColor = self.titleColor(for: currentState)

                self.setBackgroundImage(currentImage, for: .highlighted)
                self.setTitleColor(currentTitleColor, for: .highlighted)

                self.layer.opacity = 0.7

                self.layer.setAffineTransform(.init(scaleX: 0.99, y: 0.99))
            } else {
                backgroundColor = backgroundColor?.withAlphaComponent(1)
                self.layer.opacity = 1
                self.layer.setAffineTransform(.init(scaleX: 1, y: 1))
            }
        }
    }

    public override var intrinsicContentSize: CGSize {
        let titlesize = titleLabel?.intrinsicContentSize ?? .zero

        return CGSize(width: titlesize.width + contentEdgeInsets.horizontal,
                      height: titlesize.height + contentEdgeInsets.vertical)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialisation()
    }

    public init(_ configuration: GOVUKButton.ButtonConfiguration,
                viewModel: ButtonViewModel? = nil) {
        super.init(frame: .zero)

        self.viewModel = viewModel
        initialisation()
        self.buttonConfiguration = configuration
        self.setButton(config: configuration)
    }

    deinit {
        NotificationCenter.default.removeObserver(UIApplication.willEnterForegroundNotification)
    }

    private func initialisation() {
        titleLabel?.numberOfLines = 0
        titleLabel?.lineBreakMode = .byWordWrapping
        titleLabel?.adjustsFontForContentSizeCategory = true

        // possibly should be set as a Button Configuration and stored as an instance variable
        titleLabel?.font = UIFont(style: .body, weight: .semibold)
        titleLabel?.textAlignment = .center
        contentEdgeInsets = .init(top: 13, left: 16, bottom: 13, right: 16)

        buttonShapesStyle()
        configNotifications()
        updateBackground()
    }

    private func configNotifications() {
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

        updateBackground()
        updateConstraints()
        buttonShapesStyle()
    }
}
