import UIKit

extension GOVUKButton {
    public var primary: GOVUKButton {
        let button = self.addBackgroundTo()
        button.titleLabel?.font = .bodySemiBold

        button.setBackgroundFocused(color: .yellow)
        button.setBackgroundNormal(color: UIColor(resource: .myBlue))

        button.setTitleColor(.systemBackground, for: .normal)
        button.setTitleColor(.label, for: .focused)
        return button
    }
}
