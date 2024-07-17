import UIKit

extension GOVUKButton {
    public struct ButtonConfiguration {
        let titleColorNormal: UIColor?
        let titleColorFocused: UIColor?

        let titleFont: UIFont?
        let textAlignment: NSTextAlignment?
        let contentHorizontalAlignment: UIControl.ContentHorizontalAlignment?
        let contentVerticalAlignment: UIControl.ContentVerticalAlignment?
        let contentEdgeInsets: UIEdgeInsets?

        let backgroundColorNormal: UIColor?
        let backgroundColorFocused: UIColor?
        let buttonShape: ButtonShape?

        let accessibilityButtonShapesColor: UIColor?

        public init(titleColorNormal: UIColor? = nil,
                    titleColorFocused: UIColor? = nil,
                    titleFont: UIFont? = nil,
                    textAlignment: NSTextAlignment? = nil,
                    contentHorizontalAlignment: UIControl.ContentHorizontalAlignment? = nil,
                    contentVerticalAlignment: UIControl.ContentVerticalAlignment? = nil,
                    contentEdgeInsets: UIEdgeInsets? = nil,
                    backgroundColorNormal: UIColor? = nil,
                    backgroundColorFocused: UIColor? = nil,
                    buttonShape: ButtonShape? = nil,
                    accessibilityButtonShapesColor: UIColor? = nil) {
            self.titleColorNormal = titleColorNormal
            self.titleColorFocused = titleColorFocused
            self.titleFont = titleFont
            self.textAlignment = textAlignment
            self.contentHorizontalAlignment = contentHorizontalAlignment
            self.contentVerticalAlignment = contentVerticalAlignment
            self.contentEdgeInsets = contentEdgeInsets
            self.backgroundColorNormal = backgroundColorNormal
            self.backgroundColorFocused = backgroundColorFocused
            self.buttonShape = buttonShape
            self.accessibilityButtonShapesColor = accessibilityButtonShapesColor
        }
    }

    public func setButton(config: GOVUKButton.ButtonConfiguration) {
        setTitleColor(config.titleColorNormal, for: .normal)
        setTitleColor(config.titleColorFocused, for: .focused)
        self.titleLabel?.font = config.titleFont
        setBackgroundNormal(color: config.backgroundColorNormal )
        setBackgroundFocused(color: config.backgroundColorFocused)

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

        if let shape = config.buttonShape {
            self.addBackgroundTo(buttonShape: shape)
        }
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
            backgroundColorFocused: .cyan,
            buttonShape: .roundedRect(5)
        )
        return config
    }
}
#endif
