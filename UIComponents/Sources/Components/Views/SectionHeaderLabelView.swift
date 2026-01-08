import SwiftUI

public struct SectionHeaderLabelView: View {
    let viewModel: SectionHeaderLabelViewModel

    public init(model: SectionHeaderLabelViewModel) {
        self.viewModel = model
    }

    public var body: some View {
        HStack {
            Text(viewModel.title)
                .font(Font.govUK.title3Semibold)
                .foregroundColor(
                    Color(
                        UIColor.govUK.text.primary
                    )
                )
                .accessibilityAddTraits(.isHeader)
            Spacer()
            if let button = viewModel.button {
                Button {
                    button.action()
                } label: {
                    Text(button.localisedTitle)
                        .foregroundColor(Color(UIColor.govUK.text.buttonSecondary))
                        .font(Font.govUK.subheadlineSemibold)
                }
                .accessibilityLabel(
                    button.localisedAccessibilityLabel ?? button.localisedTitle
                )
            }
        }
    }
}
