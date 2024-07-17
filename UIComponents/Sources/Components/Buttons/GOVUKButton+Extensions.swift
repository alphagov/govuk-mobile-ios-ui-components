import UIKit

extension GOVUKButton {
    @discardableResult
    func addBackgroundTo(
        radius: CGFloat? = nil,
        buttonShape: ButtonShape = .capsule)
    -> Self {
        self.backgroundManager.buttonShape = buttonShape
        updateBackground()
        return self
    }

    func updateBackground() {
        switch backgroundManager.buttonShape {
        case .roundedRect(let radius):
            self.layer.cornerRadius = min(radius, 22)


//            contentEdgeInsets = viewModel?.buttonConfiguration?.contentEdgeInsets ??
//                .init(top: 13, left: 16, bottom: 13, right: 16)

        case .capsule:
            self.layer.cornerRadius = 22


//            contentEdgeInsets = viewModel?.buttonConfiguration?.contentEdgeInsets ??
//                .init(top: 13, left: 16, bottom: 13, right: 16)


        case .none:
            if privateBackgroundColor != nil {
                self.layer.cornerRadius = 0
            }
        }
        self.layer.cornerCurve = .continuous
    }
}

extension GOVUKButton {
    func buttonShapesStyle() {
        guard privateBackgroundColor == nil else { return }

        if UIAccessibility.buttonShapesEnabled {
            backgroundColor = nil

            backgroundColor = buttonConfiguration?.accessibilityButtonShapesColor == nil ?
                .secondarySystemBackground :
            buttonConfiguration?.accessibilityButtonShapesColor

            self.layer.cornerRadius = 10
            self.layer.cornerCurve = .continuous
            if self.contentEdgeInsets.left < 4 {
                self.contentEdgeInsets = .init(top: 4,
                                               left: 4,
                                               bottom: 4,
                                               right: 4)
            }
        } else {
            backgroundColor = .none
        }
    }
}
