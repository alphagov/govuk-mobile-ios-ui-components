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

    public static var secondaryLeading: GOVUKButton.ButtonConfiguration {
        .init(
            titleColorNormal: UIColor(resource: .accent),
            titleColorHighlighted: UIColor(resource: .primaryButtonHighlight),
            titleColorFocused: .black,
            titleFont: .body,
            textAlignment: .left,
            contentHorizontalAlignment: .leading,
            contentEdgeInsets: .init(top: 4, left: 0, bottom: 4, right: 0),
            backgroundColorNormal: .clear,
            backgroundColorHighlighted: .clear,
            backgroundColorFocused: UIColor(resource: .buttonFocusYellow)
        )
    }
}
