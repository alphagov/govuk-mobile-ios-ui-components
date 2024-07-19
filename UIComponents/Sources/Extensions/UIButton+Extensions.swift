import UIKit

extension UIButton {
    func setBackgroundImage(_ color: UIColor,
                            for state: UIButton.State) {
        setBackgroundImage(UIImage(color), for: state)
    }

    func setBackgroundColor(color: UIColor,
                            for state: UIControl.State) {
        clipsToBounds = true

        setBackgroundImage(color, for: state)
    }

    func removeAllActions() {
        enumerateEventHandlers { action, targetAction, event, end in
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
