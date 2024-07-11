import UIKit

extension GOVUKButton {
    public var plain: GOVUKButton {
        GOVUKButton(.plain)
    }
}

extension GOVUKButton.ButtonConfiguration {
    public static var plain: GOVUKButton.ButtonConfiguration {
        .init(titleNormal: .label)
    }
}
