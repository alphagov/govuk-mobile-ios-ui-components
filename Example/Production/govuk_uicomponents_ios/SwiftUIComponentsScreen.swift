import SwiftUI
import UIComponents

public struct SwiftUIComponentsScreen: View {
    public let viewModel: ButtonScreenViewModel

    public var body: some View {
        VStack(spacing: 16) {
            Text("SwiftUI screen")
            Spacer()
            SwiftUIButton<GOVUKButton>(.primary, viewModel: viewModel.button2)

            SwiftUIButton<GOVUKButton>(.mockConfig, viewModel: viewModel.button1)

            SwiftUIButton<GOVUKButton>(.plain, viewModel: viewModel.button3)

            SwiftUIButton<GOVUKButton>(.plainLeading, viewModel: viewModel.button4)
        }
        .padding(.horizontal)
    }
}

#Preview {
    SwiftUIComponentsScreen(viewModel: ButtonScreenViewModel())
}


public struct ButtonScreenViewModel {
    let button1 = GOVUKButtonViewModel(localisedTitle: "configured button",
                                       action: {})
    let button2 = GOVUKButtonViewModel(localisedTitle: "primary button", action: {})
    let button3 = GOVUKButtonViewModel(localisedTitle: "plain button", action: {})
    let button4 = GOVUKButtonViewModel(localisedTitle: "plain button - leading",
                                       action: {})
}
