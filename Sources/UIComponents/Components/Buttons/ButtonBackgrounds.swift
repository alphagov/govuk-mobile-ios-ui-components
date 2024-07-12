import UIKit

extension GOVUKButton {
    func addBackground(
        radius: CGFloat? = nil,
        buttonShape: ButtonShape? = .capsule
    ) {
        self.backgroundManager.buttonShape = buttonShape
        updateBackground()
    }

    func addBackgroundTo(
        radius: CGFloat? = nil,
        buttonShape: ButtonShape = .capsule
    ) -> Self {
        self.backgroundManager.buttonShape = buttonShape
        updateBackground()
        return self
    }

    func updateBackground() {
        switch backgroundManager.buttonShape {
        case .roundedRect(let radius):
            self.layer.cornerRadius = min(radius, 22)
        case .capsule:
            self.layer.cornerRadius = 22
        case .none:
            if _backgroundColor != nil {
                self.layer.cornerRadius = 0
            }
        }
        self.layer.cornerCurve = .continuous
    }

    private var titleWidth: Double {
        self.bounds.width - self.layer.cornerRadius * 2
    }
}

extension GOVUKButton {
    func buttonShapesStyle() {
        guard _backgroundColor == nil else { return }

        if UIAccessibility.buttonShapesEnabled {
            backgroundColor = nil
            backgroundColor = viewModel?.buttonConfiguration?.accessibilityButtonShapes == nil ?
                .secondarySystemBackground :
            viewModel?.buttonConfiguration?.accessibilityButtonShapes

            self.layer.cornerRadius = 10
            self.layer.cornerCurve = .continuous
            contentEdgeInsets = .init(top: 4, left: 8, bottom: 4, right: 8)
        } else {
            if let contentEdgeInsets = self.viewModel?.buttonConfiguration?.contentEdgeInsets {
                self.contentEdgeInsets = contentEdgeInsets
            }
            backgroundColor = .none
        }
    }
}
