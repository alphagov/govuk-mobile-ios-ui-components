import Foundation

extension GOVUKButton {
    public struct ButtonViewModel {
        public let localisedTitle: String
        public let localisedAccessibilityLabel: String?
        public let action: () -> Void

        public init(localisedTitle: String,
                    action: @escaping () -> Void) {
            self.localisedTitle = localisedTitle
            self.localisedAccessibilityLabel = nil
            self.action = action
        }

        public init(localisedTitle: String,
                    localisedAccessibilityLabel: String,
                    action: @escaping () -> Void) {
            self.localisedTitle = localisedTitle
            self.localisedAccessibilityLabel = localisedAccessibilityLabel
            self.action = action
        }
    }
}
