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

    var accessibilityBackgroundColor: UIColor?
    var fullKeyboardAccessBackgroundColor: UIColor?

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

    private func initialisation() {
        titleLabel?.numberOfLines = 0
        titleLabel?.lineBreakMode = .byWordWrapping
        titleLabel?.adjustsFontForContentSizeCategory = true
        titleLabel?.font = UIFont(style: .body, weight: fontWeight)
        titleLabel?.textAlignment = .center

        buttonShapesStyle()
        configNotifications()
        configConstraints()
        updateBackground()
    }

    private func configNotifications() {
        NotificationCenter.default.addObserver(forName: Notification.Name("buttonShapesEnabled"),
                                               object: nil,
                                               queue: nil) { _ in
            self.buttonShapesStyle()
        }
    }

    deinit {
        NotificationCenter.default.removeObserver(Notification.Name("buttonShapesEnabled"))
    }

    private func configConstraints() {
        NSLayoutConstraint.activate([
            self.heightAnchor.constraint(greaterThanOrEqualToConstant: 24),
            self.widthAnchor.constraint(greaterThanOrEqualToConstant: 24)
        ])

        if let titleLabel = self.titleLabel {
            NSLayoutConstraint.activate([
                self.heightAnchor.constraint(greaterThanOrEqualTo: titleLabel.heightAnchor, constant: 16)
            ])
        }


        if let titleLabel = self.titleLabel {
            NSLayoutConstraint.activate([
                titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                    constant: (self.layer.cornerRadius)),
                titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                                     constant: -(self.layer.cornerRadius))
            ])
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
    @objc public func buttonShapesStyle() {
        if UIAccessibility.buttonShapesEnabled {
            backgroundColor = accessibilityBackgroundColor == nil ?
                .secondarySystemBackground : accessibilityBackgroundColor
            contentEdgeInsets = .init(top: 13, left: 8, bottom: 13, right: 8)
            layer.cornerRadius = 10
            layer.cornerCurve = .continuous
        } else {
            backgroundColor = .none
        }
    }
}

extension GOVUKButton {
    public enum ButtonShape {
        case roundedRect(CGFloat)
        case capsule
    }

    public func addBackgroundTo(
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
            self.layer.cornerRadius = radius
        case .capsule:
            let radius = self.bounds.height / 2
            self.layer.cornerRadius = radius
        case .none:
            self.layer.cornerRadius = 0
        }

        if let titleLabel = self.titleLabel {
            NSLayoutConstraint.activate([
//                titleLabel.widthAnchor.constraint(equalToConstant: titleWidth)

                titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                    constant: (self.layer.cornerRadius * 2)),
                titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                                     constant: (self.layer.cornerRadius * 2))
            ])
        }
        self.updateConstraints()
    }

    private var titleWidth: Double {
        self.bounds.width - self.layer.cornerRadius * 2
    }
}
