import UIKit

extension GOVUKButton {
    public enum ButtonShape: Equatable {
        case roundedRect(CGFloat)
        case capsule
    }

    func addBackgroundTo(
        radius: CGFloat? = nil,
        buttonShape: ButtonShape = .capsule
    ) -> Self {
        self.buttonShape = buttonShape
        updateBackground()
        return self
    }

    func updateBackground() {
        switch buttonShape {
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
            backgroundColor = buttonShapesBackground == nil ?
                .secondarySystemBackground : buttonShapesBackground

            self.layer.cornerRadius = 10
            self.layer.cornerCurve = .continuous
            contentEdgeInsets = .init(top: 13, left: 12, bottom: 13, right: 12)
        } else {
            backgroundColor = .none
        }
    }
}
