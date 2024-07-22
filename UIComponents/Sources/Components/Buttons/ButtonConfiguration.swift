import UIKit

extension GOVUKButton {
    public struct ButtonConfiguration {
        let titleColorNormal: UIColor?
        let titleColorFocused: UIColor?

        let titleFont: UIFont
        let textAlignment: NSTextAlignment
        let contentHorizontalAlignment: UIControl.ContentHorizontalAlignment
        let contentVerticalAlignment: UIControl.ContentVerticalAlignment
        let contentEdgeInsets: UIEdgeInsets

        let backgroundColorNormal: UIColor
        let backgroundColorHighlighted: UIColor
        let backgroundColorFocused: UIColor
        let cornerRadius: CGFloat

        let accessibilityButtonShapesColor: UIColor

        public init(titleColorNormal: UIColor? = nil,
                    titleColorFocused: UIColor? = nil,
                    titleFont: UIFont,
                    textAlignment: NSTextAlignment = .center,
                    contentHorizontalAlignment: UIControl.ContentHorizontalAlignment = .center,
                    contentVerticalAlignment: UIControl.ContentVerticalAlignment = .center,
                    contentEdgeInsets: UIEdgeInsets = defaultContentEdgeInsets,
                    backgroundColorNormal: UIColor,
                    backgroundColorHighlighted: UIColor,
                    backgroundColorFocused: UIColor,
                    cornerRadius: CGFloat = 0,
                    accessibilityButtonShapesColor: UIColor = .secondarySystemBackground) {
            self.titleColorNormal = titleColorNormal
            self.titleColorFocused = titleColorFocused
            self.titleFont = titleFont
            self.textAlignment = textAlignment
            self.contentHorizontalAlignment = contentHorizontalAlignment
            self.contentVerticalAlignment = contentVerticalAlignment
            self.contentEdgeInsets = contentEdgeInsets
            self.backgroundColorNormal = backgroundColorNormal
            self.backgroundColorHighlighted = backgroundColorHighlighted
            self.backgroundColorFocused = backgroundColorFocused
            self.cornerRadius = cornerRadius
            self.accessibilityButtonShapesColor = accessibilityButtonShapesColor
        }
    }

    public static var defaultContentEdgeInsets: UIEdgeInsets {
        .init(
            top: 13,
            left: 16,
            bottom: 13,
            right: 16
        )
    }
}

#if DEBUG
extension GOVUKButton.ButtonConfiguration {
    public static var mockConfig: Self {
        let config = GOVUKButton.ButtonConfiguration(
            titleColorNormal: .magenta,
            titleColorFocused: .green,
            titleFont: .title3,
            backgroundColorNormal: .green,
            backgroundColorHighlighted: .green.withAlphaComponent(0.7),
            backgroundColorFocused: .cyan,
            cornerRadius: 5
        )
        return config
    }
}
#endif

extension GOVUKButton.ButtonConfiguration {
    func backgroundColor(for state: UIControl.State) -> UIColor {
        switch state {
        case .focused:
            backgroundColorFocused
        case .highlighted:
            backgroundColorHighlighted
        default:
            backgroundColorNormal
        }
    }

    func accessibilityButtonShapesColor(for state: UIControl.State) -> UIColor {
        guard backgroundColorNormal == .clear
        else { return backgroundColor(for: state) }
        switch state {
        case .focused:
            return accessibilityButtonShapesColor
        case .highlighted:
            return accessibilityButtonShapesColor.withAlphaComponent(0.7)
        default:
            return accessibilityButtonShapesColor
        }
    }
}
