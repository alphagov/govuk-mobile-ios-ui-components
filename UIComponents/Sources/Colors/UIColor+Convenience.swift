import Foundation
import UIKit

extension UIColor {
    static let blue1: UIColor = .init(
        r: 29,
        g: 112,
        b: 184
    )

    static let blue2: UIColor = .init(
        r: 37,
        g: 154,
        b: 255
    )

    static let blue3: UIColor = .init(
        r: 0,
        g: 209,
        b: 255
    )

    static let blue4: UIColor = .init(
        r: 69,
        g: 242,
        b: 253
    )

    static let blue5: UIColor = .init(
        r: 0,
        g: 48,
        b: 120
    )

    static let blue6: UIColor = .init(
        r: 122,
        g: 194,
        b: 255
    )

    static let yellow: UIColor = .init(
        r: 255,
        g: 221,
        b: 0
    )

    static let grey900: UIColor = .init(
        r: 26,
        g: 26,
        b: 26
    )

    static let grey800: UIColor = .init(
        r: 51,
        g: 51,
        b: 51
    )

    static let grey700: UIColor = .init(
        r: 77,
        g: 77,
        b: 77
    )

    static let grey600: UIColor = .init(
        r: 102,
        g: 102,
        b: 102
    )

    static let grey500: UIColor = .init(
        r: 128,
        g: 128,
        b: 128
    )

    static let grey400: UIColor = .init(
        r: 153,
        g: 153,
        b: 153
    )

    static let grey300: UIColor = .init(
        r: 178,
        g: 178,
        b: 178
    )

    static let grey200: UIColor = .init(
        r: 204,
        g: 204,
        b: 204
    )

    static let grey100: UIColor = .init(
        r: 229,
        g: 229,
        b: 229
    )

    static let grey50: UIColor = .init(
        r: 250,
        g: 250,
        b: 250
    )
}

extension UIColor {
    convenience init(r: CGFloat,
                     g: CGFloat,
                     b: CGFloat) {
        self.init(
            red: r / 255.0,
            green: g / 255.0,
            blue: b / 255.0,
            alpha: 1
        )
    }

    public convenience init(light: UIColor,
                            dark: UIColor) {
        self.init {
            $0.userInterfaceStyle == .dark ? dark : light
        }
    }
}
