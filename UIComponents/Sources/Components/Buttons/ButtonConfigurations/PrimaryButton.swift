import UIKit

extension GOVUKButton {
    public var primary: GOVUKButton {
        GOVUKButton(.primary)
    }
}

extension GOVUKButton.ButtonConfiguration {
    public static var primary: GOVUKButton.ButtonConfiguration {
        .init(titleColorNormal: .white,
              titleColorFocused: .black,
              backgroundColorNormal: UIColor(resource: .govukBlue),
              backgroundColorFocused: .systemYellow,
              buttonShape: .capsule)
    }
}
