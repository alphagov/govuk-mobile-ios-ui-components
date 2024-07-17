import UIKit

extension UIButton {
    public static var govUK: GOVUKButtonBuilder {
        GOVUKButtonBuilder()
    }

//    public static func govUK(viewModel: ButtonViewModel) -> GOVUKButton {
//        GOVUKButton(viewModel: viewModel)
//    }
}

public struct GOVUKButtonBuilder {
    public let primary = GOVUKButton(.primary)
}


extension UIButton {
    func setBackgroundImage(_ color: UIColor, for state: UIButton.State) {
        self.setBackgroundImage(UIImage(color), for: state)
    }

    public func setBackgroundColor(color: UIColor, for state: UIControl.State) {
        self.clipsToBounds = true

        self.setBackgroundImage(color, for: state)
        backgroundColor = color
    }
}

extension UIButton {
    func removeAllActions() {
        self.enumerateEventHandlers { action, targetAction, event, end in
            if let action {
                self.removeAction(action, for: event)
            }

            if let (target, selector) = targetAction {
                self.removeTarget(target, action: selector, for: event)
            }

            end = true
        }
    }
}
