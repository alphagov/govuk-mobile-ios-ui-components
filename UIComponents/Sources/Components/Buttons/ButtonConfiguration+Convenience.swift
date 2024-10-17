import UIKit

extension GOVUKButton.ButtonConfiguration {
    public static var primary: GOVUKButton.ButtonConfiguration {
        .init(
            titleColorNormal: UIColor.govUK.text.buttonPrimary,
            titleColorHighlighted: nil,
            titleColorFocused: UIColor.govUK.text.buttonPrimaryFocussed,
            titleFont: UIFont.govUK.bodySemibold,
            backgroundColorNormal: UIColor.govUK.fills.surfaceButtonPrimary,
            backgroundColorHighlighted: UIColor.govUK.fills.surfaceButtonPrimaryHighlight,
            backgroundColorFocused: UIColor.govUK.fills.surfaceButtonPrimaryFocussed,
            cornerRadius: 22,
            accessibilityButtonShapesColor: UIColor.grey100
        )
    }

    public static var secondary: GOVUKButton.ButtonConfiguration {
        .init(
            titleColorNormal: UIColor.govUK.text.buttonSecondary,
            titleColorHighlighted: UIColor.govUK.text.buttonSecondaryHighlight,
            titleColorFocused: UIColor.govUK.text.buttonSecondaryFocussed,
            titleFont: UIFont.govUK.body,
            backgroundColorNormal: UIColor.govUK.fills.surfaceButtonSecondary,
            backgroundColorHighlighted: UIColor.govUK.fills.surfaceButtonSecondaryHighlight,
            backgroundColorFocused: UIColor.govUK.fills.surfaceButtonSecondaryFocussed,
            accessibilityButtonShapesColor: UIColor.grey100
        )
    }

    public static var compact: GOVUKButton.ButtonConfiguration {
        .init(
            titleColorNormal: UIColor.govUK.text.buttonCompact,
            titleColorHighlighted: UIColor.govUK.text.buttonCompactHighlight,
            titleColorFocused: UIColor.govUK.text.buttonCompactFocussed,
            titleFont: UIFont.govUK.body,
            backgroundColorNormal: UIColor.govUK.fills.surfaceCard,
            backgroundColorHighlighted: UIColor.govUK.fills.surfaceButtonCompactHighlight,
            backgroundColorFocused: UIColor.govUK.fills.surfaceButtonCompactFocussed,
            cornerRadius: 22,
            borderColor: UIColor.govUK.strokes.listDivider,
            accessibilityButtonShapesColor: UIColor.grey100
        )
    }
}
