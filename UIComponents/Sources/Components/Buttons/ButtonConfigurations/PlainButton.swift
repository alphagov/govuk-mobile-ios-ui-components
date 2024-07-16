import UIKit

extension GOVUKButton {
    public var plain: GOVUKButton {
        GOVUKButton(.plain)
    }
}

extension GOVUKButton.ButtonConfiguration {
    public static var plain: GOVUKButton.ButtonConfiguration {
        .init(
            titleColorNormal: .label,
            titleFont: .body
        )
    }
}

extension GOVUKButton {
    public var plainLeading: GOVUKButton {
        GOVUKButton(.plainLeading)
    }
}

extension GOVUKButton.ButtonConfiguration {
    public static var plainLeading: GOVUKButton.ButtonConfiguration {
        .init(
            titleColorNormal: .label,
            titleFont: .body,
            textAlignment: .left,
            contentHorizontalAlignment: .leading,
            contentEdgeInsets: UIEdgeInsets(top: 4, left: 0, bottom: 4, right: 0)
        )
    }
}
