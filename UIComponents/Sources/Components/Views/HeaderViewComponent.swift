import SwiftUI

public struct HeaderViewComponent: View {
    let model: HeaderComponent

    public init(model: HeaderComponent) {
        self.model = model
    }

    public var body: some View {
        HStack {
            Text(model.title)
                .font(Font.govUK.title3Semibold)
                .foregroundColor(
                    Color(
                        UIColor.govUK.text.primary
                    )
                )
                .accessibilityAddTraits(.isHeader)
            Spacer()
            if let button = model.secondaryButton {
                Button {
                    button.action()
                } label: {
                    Text(button.title)
                        .foregroundColor(Color(UIColor.govUK.text.buttonSecondary))
                        .font(Font.govUK.subheadlineSemibold)
                }
                .accessibilityLabel(
                    button.accessibilityLabel ?? ""
                )
            }
        }
    }
}
