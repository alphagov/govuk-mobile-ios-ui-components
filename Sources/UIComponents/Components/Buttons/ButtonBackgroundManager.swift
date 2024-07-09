import UIKit

class BackgroundColorManager {
    let setColor: (UIColor, UIButton.State) -> ()

    var hasBackground: Bool = false

//    private var _normal: UIColor?
//    var normal: UIColor? {
//        get { _normal }
//        set {
//            _normal = newValue
//
//            if newValue != nil {
//                hasBackground = true
//            } else {
//                hasBackground = false
//            }
//        }
//    }

            var normal: UIColor? {
                didSet {
                    highlighted = normal?.withAlphaComponent(0.7)
        
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

    private(set) var highlighted: UIColor? {
        didSet {
            if let highlighted {
                setColor(highlighted, .highlighted)
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
