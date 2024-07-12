import SwiftUI
import UIComponents

public struct SwiftUIComponentsScreen: View {
    public let viewModel: ButtonScreenViewModel

    public var body: some View {
        VStack(spacing: 16) {
            Text("SwiftUI screen")
            Spacer()
            SwiftUIButton<GOVUKButton>(viewModel: viewModel.button2)

            SwiftUIButton<GOVUKButton>(viewModel: viewModel.button1)

            SwiftUIButton<GOVUKButton>(viewModel: viewModel.button3)

            SwiftUIButton<GOVUKButton>(viewModel: viewModel.button4)
        }
        .padding(.horizontal)
    }
}

#Preview {
    SwiftUIComponentsScreen(viewModel: ButtonScreenViewModel())
}


public struct ButtonScreenViewModel {
    let button1 = MockViewModel(action: {})
    let button2 = PrimaryButtonViewModel(localisedTitle: "primary button", action: {})
    let button3 = PlainButtonViewModel(localisedTitle: "plain button", action: {})
    let button4 = PlainButtonViewModel(localisedTitle: "plain button - leading",
                                       action: {},
                                       configuration: .plainLeading)
}
