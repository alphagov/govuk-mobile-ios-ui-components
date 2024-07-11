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
        }
        .padding()
    }
}

#Preview {
    SwiftUIComponentsScreen(viewModel: ButtonScreenViewModel())
}


public struct ButtonScreenViewModel {
    let button1 = MockViewModel(action: {})
    let button2 = PrimaryButtonViewModel(localisedTitle: "primary button", action: {})
}
