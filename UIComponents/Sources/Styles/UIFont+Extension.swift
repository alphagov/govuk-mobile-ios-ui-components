import UIKit

extension UIFont {
    public static var govUK: GOVUKFontBuilder {
        GOVUKFontBuilder()
    }
}

extension UIFont {
    public convenience init(style: TextStyle,
                            weight: Weight = .regular,
                            design: UIFontDescriptor.SystemDesign = .default) {
        guard let descriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: style)
            .addingAttributes([.traits: [
                UIFontDescriptor.TraitKey.weight: weight
                                        ]])
            .withDesign(design) else {
            preconditionFailure("Could not find a matching font")
        }
        self.init(descriptor: descriptor, size: 0)
    }

    public func italic() -> UIFont {
        if let descriptor = self.fontDescriptor.withSymbolicTraits(.traitItalic) {
            return UIFont(descriptor: descriptor, size: 0)
        }
        return self
    }
}

public struct GOVUKFontBuilder {
    public let largeTitle = UIFont(style: .largeTitle, weight: .regular)
    public let largeTitleBold = UIFont(style: .largeTitle, weight: .bold)

    public let title1 = UIFont(style: .title1, weight: .regular)
    public let title1Bold = UIFont(style: .title1, weight: .bold)

    public let title2 = UIFont(style: .title2, weight: .regular)
    public let title2Bold = UIFont(style: .title2, weight: .bold)

    public let title3 = UIFont(style: .title3, weight: .regular)
    public let title3Semibold = UIFont(style: .title3, weight: .semibold)

    public let headlineSemibold = UIFont(style: .headline, weight: .semibold)
    public var headlineItalic: UIFont { headlineSemibold.italic() }

    public let bodySemibold = UIFont(style: .body, weight: .semibold)
    public let body = UIFont(style: .body, weight: .regular)
    public var bodyItalic: UIFont { body.italic() }
    public var bodyBoldItalic: UIFont { bodySemibold.italic() }

    public let calloutSemibold = UIFont(style: .callout, weight: .semibold)
    public let callout = UIFont(style: .callout, weight: .regular)
    public var calloutItalic: UIFont { callout.italic() }
    public var calloutBoldItalic: UIFont { calloutSemibold.italic() }

    public let subheadlineSemibold = UIFont(style: .subheadline, weight: .semibold)
    public let subheadline = UIFont(style: .subheadline, weight: .regular)
    public var subheadlineItalic: UIFont { subheadline.italic() }
    public var subheadlineBoldItalic: UIFont { subheadlineSemibold.italic() }

    public let caption1Medium = UIFont(style: .caption1, weight: .medium)
    public let caption1 = UIFont(style: .caption1, weight: .regular)
    public var caption1Italic: UIFont { caption1.italic() }
    public var caption1MediumItalic: UIFont { caption1Medium.italic() }

    public let caption2Semibold = UIFont(style: .caption2, weight: .semibold)
    public let caption2 = UIFont(style: .caption2, weight: .regular)
    public var caption2Italic: UIFont { caption2.italic() }
    public var caption2SemiboldItalic: UIFont { caption2Semibold.italic() }
}
