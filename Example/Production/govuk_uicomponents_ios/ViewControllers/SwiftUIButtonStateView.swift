import SwiftUI
import UIComponents

struct SwiftUIButtonStateView: View {
    let viewModel: ButtonStateViewModel
    @FocusState private var isButtonFocussed: Bool

    init(viewModel: ButtonStateViewModel) {
        self.viewModel = viewModel
        self.isButtonFocussed = true
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(viewModel.title)
            Spacer()
            HStack(
                spacing: 16,
                content: {
                    Text("Default")
                        .frame(width: 100)
                    defaultButton
                }
            )
            HStack(
                spacing: 16,
                content: {
                    Text("Disabled")
                        .frame(width: 100)
                    disabledButton
                }
            )
        }
        .padding(.horizontal)
    }

    var defaultButton: some View {
        SwiftUIButton(
            viewModel.config,
            viewModel: .init(
                localisedTitle: viewModel.title,
                action: {}
            )
        )
        .frame(width: viewModel.width)
    }

    var disabledButton: some View {
        SwiftUIButton(
            viewModel.config,
            viewModel: .init(
                localisedTitle: viewModel.title,
                action: {}
            )
        )
        .frame(width: viewModel.width)
        .disabled(true)
    }

    var focussedButton: some View {
        SwiftUIButton(
            viewModel.config,
            viewModel: .init(
                localisedTitle: viewModel.title,
                action: {}
            )
        )
        .frame(width: viewModel.width)
        .focused($isButtonFocussed)
    }
}

#Preview {
    SwiftUIButtonStateView(
        viewModel: .init(
            title: "Primary",
            config: .primary,
            width: 200
        )
    )
}
