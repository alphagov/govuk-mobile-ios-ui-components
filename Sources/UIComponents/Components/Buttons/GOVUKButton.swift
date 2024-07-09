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

    public override var backgroundColor: UIColor? {
        didSet {
            hasBackground = backgroundColor == nil ? false : true

            if backgroundColor == UIColor.clear {
                hasBackground = false
            }
        }
    }

    override public var isHighlighted: Bool {
        willSet {
            if newValue == true {
                backgroundColor = backgroundColor?.withAlphaComponent(0.7)
                self.layer.setAffineTransform(.init(scaleX: 0.95, y: 0.95))
            } else {
                backgroundColor = backgroundColor?.withAlphaComponent(1)
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

//    public override func setBackgroundColor(color: UIColor, forState: UIControl.State) {
//        <#code#>
//    }

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

extension GOVUKButton {
    func buttonShapesStyle() {
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
        var normalColor: UIColor?

        if let nextItem = context.nextFocusedItem, nextItem.isEqual(self) {
            if let color = self.accessibilityBackgroundColor {
                backgroundColor = color

                normalColor = self.titleColor(for: .normal)

                if let titleColorFocused = self.titleColor(for: .focused) {
                    self.setTitleColor(titleColorFocused, for: .normal)
                }
            }
        } else {
            if let color = self._backgroundColor {
                backgroundColor = color

                self.setTitleColor(normalColor, for: .normal)
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

//class BackgroundColorManager {
//    var state: BackgroundState = .normal
//
//    var normal: UIColor?
//    var focused: UIColor?
//    var highlighted: UIColor?
//}
//
//enum BackgroundState {
//    case normal
//    case focused
//    case highlighted
//}


//class BackgroundColorManager {
//    var state: BackgroundState = .normal()
//
//    var normal: BackgroundState = .normal()
//    var focused: BackgroundState = .focused()
//
//    var highlighted: UIColor? {
//        switch state {
//        case .normal(let color), .focused(let color):
//            color?.withAlphaComponent(0.7)
//        }
//    }
//
//    func setBackground(color: UIColor, for: BackgroundState) {
//
//    }
//}
//
//enum BackgroundState {
//    case normal(UIColor? = nil)
//    case focused(UIColor? = nil)
//}
//
//
//extension GOVUKButton {
//    func setBackgroundImage(_ color: UIColor, for state: UIButton.State) {
//        self.setBackgroundImage(UIImage(color), for: state)
//    }
//
//    public func setBackgroundColor(color: UIColor, for state: UIControl.State) {
//        self.clipsToBounds = true
//
//        self.setBackgroundImage(color, for: state)
//    }
//}
//
//
//extension UIImage {
//    convenience init?(_ color: UIColor) {
////
////        let context = UIGraphicsRendererContext()
////        let minimumSize: CGSize = CGSize(width: 1.0, height: 1.0)
////
////
////        let renderer = UIGraphicsImageRenderer()
////
////        let image = renderer.image { context in
////            color.setFill()
////
////            context.fill(CGRect(origin: .zero, size: minimumSize))
////        }
////
////        if let image = image.cgImage {
////            self.init(cgImage: image)
////        } else { return nil }
//
//
//
//        let minimumSize: CGSize = CGSize(width: 1.0, height: 1.0)
//
//        UIGraphicsBeginImageContext(minimumSize)
//
//        if let context = UIGraphicsGetCurrentContext() {
//            context.setFillColor(color.cgColor)
//            context.fill(CGRect(origin: .zero, size: minimumSize))
//        }
//
//        if let image = UIGraphicsGetImageFromCurrentImageContext()?.cgImage {
//            self.init(cgImage: image)
//        } else { return nil }
//
//        UIGraphicsEndImageContext()
//    }
//}
