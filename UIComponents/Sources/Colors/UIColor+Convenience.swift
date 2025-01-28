import Foundation
import UIKit

extension UIColor {
    static let blue1: UIColor = #colorLiteral(red: 0.1137254902, green: 0.4392156863, blue: 0.7215686275, alpha: 1)
    static let blue2: UIColor = #colorLiteral(red: 0.1450980392, green: 0.6039215686, blue: 1, alpha: 1)
    static let blue3: UIColor = #colorLiteral(red: 0, green: 1, blue: 0.8784313725, alpha: 1)
    static let blue4: UIColor = #colorLiteral(red: 0.2705882353, green: 0.9490196078, blue: 0.9921568627, alpha: 1)
    static let blue5: UIColor = #colorLiteral(red: 0, green: 0.1882352941, blue: 0.4705882353, alpha: 1)
    static let blue6: UIColor = #colorLiteral(red: 0.4784313725, green: 0.7607843137, blue: 1, alpha: 1)
    static let blue7: UIColor = #colorLiteral(red: 0.8941176471, green: 0.9333333333, blue: 0.9803921569, alpha: 1)
    static let blue8: UIColor = #colorLiteral(red: 0.09803921569, green: 0.2431372549, blue: 0.3803921569, alpha: 1)

    static let yellow1: UIColor = #colorLiteral(red: 1, green: 0.8666666667, blue: 0, alpha: 1)

    static let green1: UIColor = #colorLiteral(red: 0.06666666667, green: 0.5294117647, blue: 0.3529411765, alpha: 1)
    static let green2: UIColor = #colorLiteral(red: 0.4, green: 0.9529411765, blue: 0.6196078431, alpha: 1)
    static let green3: UIColor = #colorLiteral(red: 0.05490196078, green: 0.4235294118, blue: 0.2823529412, alpha: 1)
    static let green4: UIColor = #colorLiteral(red: 0.3215686275, green: 0.7607843137, blue: 0.4941176471, alpha: 1)

    static let grey900: UIColor = #colorLiteral(red: 0.1019607843, green: 0.1019607843, blue: 0.1019607843, alpha: 1)
    static let grey850: UIColor = #colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1490196078, alpha: 1)
    static let grey800: UIColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
    static let grey700: UIColor = #colorLiteral(red: 0.3019607843, green: 0.3019607843, blue: 0.3019607843, alpha: 1)
    static let grey600: UIColor = #colorLiteral(red: 0.4, green: 0.4, blue: 0.4, alpha: 1)
    static let grey550: UIColor = #colorLiteral(red: 0.462745098, green: 0.462745098, blue: 0.5019607843, alpha: 1)
    static let grey500: UIColor = #colorLiteral(red: 0.5019607843, green: 0.5019607843, blue: 0.5019607843, alpha: 1)
    static let grey400: UIColor = #colorLiteral(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)
    static let grey300: UIColor = #colorLiteral(red: 0.6980392157, green: 0.6980392157, blue: 0.6980392157, alpha: 1)
    static let grey200: UIColor = #colorLiteral(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
    static let grey100: UIColor = #colorLiteral(red: 0.8980392157, green: 0.8980392157, blue: 0.8980392157, alpha: 1)
    static let grey50: UIColor = #colorLiteral(red: 0.9803921569, green: 0.9803921569, blue: 0.9803921569, alpha: 1)
}

extension UIColor {
    public convenience init(light: UIColor,
                            dark: UIColor) {
        self.init {
            $0.userInterfaceStyle == .dark ? dark : light
        }
    }
}
