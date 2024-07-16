import UIKit

extension UIButton {
    public static var govUK: GOVUKButton {
        GOVUKButton()
    }

    public static func govUK(viewModel: ButtonViewModel) -> GOVUKButton {
        GOVUKButton(viewModel: viewModel)
    }
}


extension UIButton {
    func setBackgroundImage(_ color: UIColor, for state: UIButton.State) {
        self.setBackgroundImage(UIImage(color), for: state)
    }

    public func setBackgroundColor(color: UIColor, for state: UIControl.State) {
        self.clipsToBounds = true

        self.setBackgroundImage(color, for: state)
        backgroundColor = color
    }
}
