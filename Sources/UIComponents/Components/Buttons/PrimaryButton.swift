import UIKit

extension GOVUKButton {
    public var primary: GOVUKButton {
        GOVUKButton(.primary)
    }
}

extension GOVUKButton.ButtonConfiguration {
    public static var primary: GOVUKButton.ButtonConfiguration {
        .init(titleNormal: .white,
              titleFocused: .black,
              backgroundNormal: UIColor(resource: .myBlue),
              backgroundFocused: .systemYellow,
              backgroundShape: .capsule)
    }
}
