import UIKit

final class BackgroundColorManager {
    private let setColor: (UIColor, UIButton.State) -> ()

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

extension GOVUKButton {
    public enum ButtonShape: Equatable {
        case roundedRect(CGFloat)
        case capsule
    }

    public struct ButtonConfiguration {
        let titleNormal: UIColor?
        let titleFocused: UIColor?

        let titleFont: UIFont?

        let backgroundNormal: UIColor
        let backgroundFocused: UIColor?
        let backgroundShape: ButtonShape?

        let accessibilityButtonShapes: UIColor?

        public init(titleNormal: UIColor? = nil,
                    titleFocused: UIColor? = nil,
                    titleFont: UIFont? = nil,
                    backgroundNormal: UIColor,
                    backgroundFocused: UIColor? = nil,
                    backgroundShape: ButtonShape? = nil,
                    accessibilityButtonShapes: UIColor? = nil) {
            self.titleNormal = titleNormal
            self.titleFocused = titleFocused
            self.titleFont = titleFont
            self.backgroundNormal = backgroundNormal
            self.backgroundFocused = backgroundFocused
            self.backgroundShape = backgroundShape
            self.accessibilityButtonShapes = accessibilityButtonShapes
        }
    }
}
