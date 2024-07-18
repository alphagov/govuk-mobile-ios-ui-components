import SwiftUI
import UIComponents

public struct SwiftUIComponentsScreen: View {
    public let viewModel: ButtonScreenViewModel

    public var body: some View {
        VStack(spacing: 16) {
            Text("SwiftUI screen")
            Spacer()
            SwiftUIButton(.primary, viewModel: viewModel.button2)

            SwiftUIButton(.mockConfig, viewModel: viewModel.button1)

            SwiftUIButton(.secondary, viewModel: viewModel.button3)

            SwiftUIButton(.plainLeading, viewModel: viewModel.button4)
        }
        .padding(.horizontal)
    }
}

#Preview {
    SwiftUIComponentsScreen(viewModel: ButtonScreenViewModel())
}


public struct ButtonScreenViewModel {
    let button1 = GOVUKButton.ButtonViewModel(
        localisedTitle: "configured button",
        action: {}
    )
    let button2 = GOVUKButton.ButtonViewModel(
        localisedTitle: "primary button",
        action: {}
    )
    let button3 = GOVUKButton.ButtonViewModel(
        localisedTitle: "plain button",
        action: {}
    )
    let button4 = GOVUKButton.ButtonViewModel(
        localisedTitle: "plain button - leading",
        action: {}
    )
}
