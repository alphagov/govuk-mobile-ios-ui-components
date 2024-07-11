import SwiftUI
import UIComponents

struct SwiftUIComponentsScreen: View {
    let buttonViewModel1: ButtonViewModel
    let buttonViewModel2: ButtonViewModel

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                SwiftUIButton<GOVUKButton>(viewModel: buttonViewModel1)

                SwiftUIButton<GOVUKButton>(viewModel: buttonViewModel2)
            }
            .padding()
        }
    }
}

#Preview {
    SwiftUIComponentsScreen(buttonViewModel1: MockViewModel(action: {}),
    buttonViewModel2: PrimaryButtonViewModel(localisedTitle: "primary button", action: {}))
}
