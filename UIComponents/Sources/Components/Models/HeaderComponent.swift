import Foundation

public struct HeaderComponent {
    let title: String
    let secondaryButton: SecondaryButton?

    init(title: String,
         secondaryButton: SecondaryButton? = nil) {
        self.title = title
        self.secondaryButton = secondaryButton
    }

    struct SecondaryButton {
        let title: String
        let accessibilityLabel: String?
        let action: () -> Void?

        init(title: String,
             accessibilityLabel: String? = nil,
             action: @escaping () -> Void) {
            self.title = title
            self.accessibilityLabel = accessibilityLabel
            self.action = action
        }
    }
}
