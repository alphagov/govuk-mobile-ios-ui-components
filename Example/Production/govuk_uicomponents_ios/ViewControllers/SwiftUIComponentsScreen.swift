import SwiftUI
import UIComponents

public struct SwiftUIComponentsScreen: View {
    public let viewModel: ButtonScreenViewModel

    public var body: some View {
        VStack(spacing: 16) {
            Text("SwiftUI screen")
            Spacer()
            VStack(alignment: .leading, spacing: 8) {
                Text("title1")
                    .font(Font.govUK.title1)
                Text("title1 bold")
                    .font(Font.govUK.title1Bold)
                Text("headline semibold")
                    .font(Font.govUK.headlineSemibold)
                Text("headline semibold italic")
                    .font(Font.govUK.headlineSemiboldItalic)
                Text("body")
                    .font(Font.govUK.body)
                Text("body italic")
                    .font(Font.govUK.bodyItalic)
                Text("body semibold")
                    .font(Font.govUK.bodySemibold)
                Text("body semibold italic ")
                    .font(Font.govUK.bodySemiboldItalic)
            }
            .frame(maxWidth: .infinity, alignment: .leading)

            SwiftUIButton(.primary, viewModel: viewModel.button2)

            SwiftUIButton(.mockConfig, viewModel: viewModel.button1)

            SwiftUIButton(.secondary, viewModel: viewModel.button3)

            SwiftUIButton(.destructive, viewModel: viewModel.button4)
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
        localisedTitle: "secondary button",
        action: {}
    )
    let button4 = GOVUKButton.ButtonViewModel(
        localisedTitle: "destructive button", action: {}
    )
}
