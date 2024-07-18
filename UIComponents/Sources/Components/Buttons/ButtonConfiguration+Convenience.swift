import UIKit

extension GOVUKButton.ButtonConfiguration {
    public static var primary: GOVUKButton.ButtonConfiguration {
        .init(
            titleColorNormal: .white,
            titleColorFocused: .black,
            titleFont: .bodySemiBold,
            backgroundColorNormal: UIColor(resource: .govukBlue),
            backgroundColorFocused: .systemYellow,
            cornerRadius: 22
        )
    }

    public static var secondary: GOVUKButton.ButtonConfiguration {
        .init(
            titleColorNormal: .label,
            titleFont: .body,
            backgroundColorNormal: .clear,
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
            backgroundColorFocused: .clear
        )
    }
}
