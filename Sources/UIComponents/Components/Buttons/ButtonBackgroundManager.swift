import UIKit

public enum ButtonShape: Equatable {
    case roundedRect(CGFloat)
    case capsule
}

final class BackgroundManager {
    weak var button: GOVUKButton?
    var tempColor: UIColor?
    var buttonShape: ButtonShape?
    var hasBackground: Bool = false

    var normal: UIColor? {
        didSet {
            if let normal {
                button?.setBackgroundColor(color: normal, for: .normal)
            }
        }
    }

    var focused: UIColor? {
        didSet {
            if let focused {
                button?.setBackgroundColor(color: focused, for: .focused)
            }
        }
    }

    init(normal: UIColor? = nil,
         focused: UIColor? = nil,
         button: GOVUKButton?
    ) {
        self.normal = normal
        self.focused = focused
        self.button = button
    }
}
