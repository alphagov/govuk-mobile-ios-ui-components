import UIKit

final public class GOVUKButton: UIButton {
    public var viewModel: ButtonViewModel?


    lazy var backgroundManager = BackgroundManager(setColor: setBackgroundColor)

    private(set) var _backgroundColor: UIColor? {
        didSet {
            backgroundColor = _backgroundColor
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

        backgroundManager.tempColor = backgroundManager.normal

        if backgroundManager.hasBackground {
            self.setBackgroundNormal(color: backgroundManager.focused)

            backgroundColor = backgroundManager.tempColor
        }
    }

    public override func accessibilityElementDidLoseFocus() {
        super.accessibilityElementDidLoseFocus()

        self.setBackgroundNormal(color: backgroundManager.tempColor)
    }

    public func setBackgroundFocused(color: UIColor?) {
        backgroundManager.focused = color
    }

    public func setBackgroundNormal(color: UIColor?) {
        _backgroundColor = color
        backgroundManager.normal = color
    }

    public func viewModelUpdate(viewModel: ButtonViewModel) {
        self.setTitle(viewModel.localisedTitle, for: .normal)

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

        if let configuration = viewModel.buttonConfiguration {
            updateButtonConfig(configuration)
        }

        self.viewModel = viewModel
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

    public init() {
        super.init(frame: .zero)
        initialisation()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialisation()
    }

    public init(viewModel: ButtonViewModel) {
        super.init(frame: .zero)
        initialisation()
        self.viewModelUpdate(viewModel: viewModel)
    }

    public init(_ configuration: GOVUKButton.ButtonConfiguration) {
        super.init(frame: .zero)
        initialisation()
        self.updateButtonConfig(configuration)
    }

    deinit {
        NotificationCenter.default.removeObserver(Notification.Name("buttonShapesEnabled"))
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
        NotificationCenter.default.addObserver(forName: Notification.Name("buttonShapesEnabled"),
                                               object: nil,
                                               queue: nil) { _ in
            self.layoutSubviews()
        }
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

/*
 need to add this notification code to scene delegate

 func sceneWillEnterForeground(_ scene: UIScene) {
 postNotification()
 }

 func postNotification() {
 let nc = NotificationCenter.default
 nc.post(Notification(name: Notification.Name( "buttonShapesEnabled"), object: nil))
 }
 */
