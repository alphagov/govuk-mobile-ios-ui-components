import UIKit

public enum ButtonShape: Equatable {
    case roundedRect(CGFloat)
    case capsule
}

final class BackgroundManager {
    private let setColor: (UIColor, UIButton.State) -> ()
    var tempColor: UIColor?

    var buttonShape: ButtonShape?

    var hasBackground: Bool = false

    var normal: UIColor? {
        didSet {
            if let normal {
                setColor(normal, .normal)
            }
        }
    }

    var focused: UIColor? {
        didSet {
            if let focused {
                setColor(focused, .focused)
            }
        }
    }

    init(normal: UIColor? = nil,
         focused: UIColor? = nil,
         setColor: @escaping (UIColor, UIButton.State) -> Void) {
        self.normal = normal
        self.focused = focused
        self.setColor = setColor
    }
}
