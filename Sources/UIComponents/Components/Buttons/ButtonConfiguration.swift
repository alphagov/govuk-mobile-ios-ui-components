import UIKit

extension GOVUKButton {
    public struct ButtonConfiguration {
        let titleNormal: UIColor?
        let titleFocused: UIColor?

        let titleFont: UIFont?
        let textAlignment: NSTextAlignment?
        let contentHorizontalAlignment: UIControl.ContentHorizontalAlignment?
        let contentVerticalAlignment: UIControl.ContentVerticalAlignment?
        let contentEdgeInsets: UIEdgeInsets?

        let backgroundNormal: UIColor?
        let backgroundFocused: UIColor?
        let backgroundShape: ButtonShape?

        let accessibilityButtonShapes: UIColor?

        public init(titleNormal: UIColor? = nil,
                    titleFocused: UIColor? = nil,
                    titleFont: UIFont? = nil,
                    textAlignment: NSTextAlignment? = nil,
                    contentHorizontalAlignment: UIControl.ContentHorizontalAlignment? = nil,
                    contentVerticalAlignment: UIControl.ContentVerticalAlignment? = nil,
                    contentEdgeInsets: UIEdgeInsets? = nil,
                    backgroundNormal: UIColor?,
                    backgroundFocused: UIColor? = nil,
                    backgroundShape: ButtonShape? = nil,
                    accessibilityButtonShapes: UIColor? = nil) {
            self.titleNormal = titleNormal
            self.titleFocused = titleFocused
            self.titleFont = titleFont
            self.textAlignment = textAlignment
            self.contentHorizontalAlignment = contentHorizontalAlignment
            self.contentVerticalAlignment = contentVerticalAlignment
            self.contentEdgeInsets = contentEdgeInsets
            self.backgroundNormal = backgroundNormal
            self.backgroundFocused = backgroundFocused
            self.backgroundShape = backgroundShape
            self.accessibilityButtonShapes = accessibilityButtonShapes
        }
    }

    public func updateButtonConfig(_ config: GOVUKButton.ButtonConfiguration) {
        if let color = config.titleNormal {
            setTitleColor(color, for: .normal)
        }

        if let color = config.titleFocused {
            setTitleColor(color, for: .focused)
        }

        if let title = config.titleFont {
            self.titleLabel?.font = title
        }

        if let textAlignment = config.textAlignment {
            self.titleLabel?.textAlignment = textAlignment
        }

        if let alignment = config.contentHorizontalAlignment {
            self.contentHorizontalAlignment = alignment
        }

        if let alignment = config.contentVerticalAlignment {
            self.contentVerticalAlignment = alignment
        }

        if let insets = config.contentEdgeInsets {
            self.contentEdgeInsets = insets
        }

        if let color = config.backgroundNormal {
            setBackgroundNormal(color: color)
        }

        if let color = config.backgroundFocused {
            setBackgroundFocused(color: color)
        }

        if let shape = config.backgroundShape {
            self.addBackground(buttonShape: shape)
        }
    }
}
