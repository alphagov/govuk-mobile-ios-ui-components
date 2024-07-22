import UIKit

extension GOVUKButton.ButtonConfiguration {
    public static var primary: GOVUKButton.ButtonConfiguration {
        .init(
            titleColorNormal: .white,
            titleColorFocused: .black,
            titleFont: .bodySemiBold,
            backgroundColorNormal: UIColor(resource: .govukBlue),
            backgroundColorHighlighted: UIColor(resource: .govukBlue).withAlphaComponent(0.7),
            backgroundColorFocused: .systemYellow,
            cornerRadius: 22
        )
    }

    public static var secondary: GOVUKButton.ButtonConfiguration {
        .init(
            titleColorNormal: .label,
            titleColorFocused: .label.withAlphaComponent(0.7),
            titleFont: .body,
            backgroundColorNormal: .clear,
            backgroundColorHighlighted: .clear,
            backgroundColorFocused: .clear
        )
    }

    public static var plainLeading: GOVUKButton.ButtonConfiguration {
        .init(
            titleColorNormal: .label,
            titleFont: .body,
            textAlignment: .left,
            contentHorizontalAlignment: .leading,
            contentEdgeInsets: .init(top: 4, left: 0, bottom: 4, right: 0),
            backgroundColorNormal: .clear,
            backgroundColorHighlighted: .clear,
            backgroundColorFocused: .clear
        )
    }
}
