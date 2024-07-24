import UIKit

extension GOVUKButton.ButtonConfiguration {
    public static var primary: GOVUKButton.ButtonConfiguration {
        .init(
            titleColorNormal: .systemBackground,
            titleColorFocused: .black,
            titleFont: .bodySemiBold,
            backgroundColorNormal: UIColor(resource: .accent),
            backgroundColorHighlighted: UIColor(resource: .primaryButtonHighlight),
            backgroundColorFocused: UIColor(resource: .buttonFocusYellow),
            cornerRadius: 22
        )
    }

    public static var secondary: GOVUKButton.ButtonConfiguration {
        .init(
            titleColorNormal: UIColor(resource: .accent),
            titleColorHighlighted: UIColor(resource: .primaryButtonHighlight),
            titleColorFocused: .black,
            titleFont: .body,
            backgroundColorNormal: .clear,
            backgroundColorHighlighted: .clear,
            backgroundColorFocused: UIColor(resource: .buttonFocusYellow)
        )
    }
}
