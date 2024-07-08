import UIKit

extension UIButton {
    public static var govUK: GOVUKButton {
        GOVUKButton()
    }

    public static func govUK(action: UIAction) -> GOVUKButton {
        GOVUKButton(action: action)
    }
}

final public class GOVUKButton: UIButton {
    private var buttonShape: ButtonShape?
    private(set) var hasBackground: Bool = false

    public var buttonShapesBackground: UIColor?
    public var accessibilityBackgroundColor: UIColor?

    public var fontWeight: UIFont.Weight = .regular

    private var _backgroundColor: UIColor? {
        didSet {
            backgroundColor = _backgroundColor
        }
    }
//
//    private var _titleColor: UIColor? {
//        didSet {
//            self.setTitleColor(_titleColor, for: .normal)
//        }
//    }

    public override var backgroundColor: UIColor? {
        didSet {
            hasBackground = backgroundColor == nil ? false : true

            if backgroundColor == UIColor.clear {
                hasBackground = false
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

//    public override func setTitleColor(_ color: UIColor?, for state: UIControl.State) {
//        super.setTitleColor(color, for: state)
//        _titleColor = color
//    }

    public override func layoutSubviews() {
        super.layoutSubviews()

        guard let width = titleLabel?.frame.width else { return }
        titleLabel?.preferredMaxLayoutWidth = width

        updateBackground()
        updateConstraints()
    }
}

extension GOVUKButton {
    @objc public func buttonShapesStyle() {
        guard _backgroundColor == nil else { return }

        if UIAccessibility.buttonShapesEnabled {
            backgroundColor = nil
            backgroundColor = buttonShapesBackground == nil ?
                .secondarySystemBackground : buttonShapesBackground

            self.layer.cornerRadius = 10
            self.layer.cornerCurve = .continuous
            contentEdgeInsets = .init(top: 13, left: 12, bottom: 13, right: 12)
        } else {
            backgroundColor = .none
        }
    }
}

extension GOVUKButton {
    public enum ButtonShape: Equatable {
        case roundedRect(CGFloat)
        case capsule
    }

    public var primary: GOVUKButton {
        let button = self.addBackgroundTo(color: UIColor(resource: .myBlue))
        button.titleLabel?.font = .bodySemiBold
        button.accessibilityBackgroundColor = .yellow
        button.setTitleColor(.systemBackground, for: .normal)
        button.setTitleColor(.label, for: .focused)
        return button
    }

    private func addBackgroundTo(
        color: UIColor,
        radius: CGFloat? = nil,
        buttonShape: ButtonShape = .capsule
    ) -> Self {
        self._backgroundColor = color
        self.buttonShape = buttonShape

        updateBackground()

        return self
    }

    private func updateBackground() {
        switch buttonShape {
        case .roundedRect(let radius):
            self.layer.cornerRadius = min(radius, 22)
        case .capsule:
            self.layer.cornerRadius = 22
        case .none:
            if _backgroundColor != nil {
                self.layer.cornerRadius = 0
            }
        }
        self.layer.cornerCurve = .continuous
    }

    private var titleWidth: Double {
        self.bounds.width - self.layer.cornerRadius * 2
    }

    public override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        if let nextItem = context.nextFocusedItem, nextItem.isEqual(self) {
            if let color = self.accessibilityBackgroundColor {
                backgroundColor = color
            }
        } else {
            if let color = self._backgroundColor {
                backgroundColor = color
            }
        }
    }

    public override func accessibilityElementDidBecomeFocused() {
        if let color = self.accessibilityBackgroundColor {
            backgroundColor = color
        }
    }

    public override func accessibilityElementDidLoseFocus() {
        if let color = self._backgroundColor {
            backgroundColor = color
        }
        setTitleColor(.label, for: .normal)
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
