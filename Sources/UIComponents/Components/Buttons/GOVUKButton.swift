import UIKit

final public class GOVUKButton: UIButton {
    private(set) var hasBackground: Bool = false
    var buttonShape: ButtonShape?

    public var buttonShapesBackground: UIColor?
    public var fontWeight: UIFont.Weight = .regular

    lazy var backgroundManager = BackgroundColorManager(setColor: setBackgroundColor)

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

    public func setBackgroundFocused(color: UIColor) {
        backgroundManager.focused = color
    }

    public func setBackgroundNormal(color: UIColor) {
        backgroundManager.normal = color
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

    required public init(action: UIAction) {
        super.init(frame: .zero)
        initialisation()
        self.addAction(action, for: .touchUpInside)
    }

    deinit {
        NotificationCenter.default.removeObserver(Notification.Name("buttonShapesEnabled"))
    }

    private func initialisation() {
        titleLabel?.numberOfLines = 0
        titleLabel?.lineBreakMode = .byWordWrapping
        titleLabel?.adjustsFontForContentSizeCategory = true
        titleLabel?.font = UIFont(style: .body, weight: fontWeight)
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
            self.buttonShapesStyle()
        }
    }

    public override func layoutSubviews() {
        super.layoutSubviews()

        guard let width = titleLabel?.frame.width else { return }
        titleLabel?.preferredMaxLayoutWidth = width

        updateBackground()
        updateConstraints()
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
