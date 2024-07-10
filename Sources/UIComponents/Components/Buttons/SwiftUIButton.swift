import SwiftUI

protocol WrappableButton: GOVUKButton {
    var viewModel: ButtonViewModel? { get }
    // want to change this to view model init
    init()
    init(viewModel: ButtonViewModel)
}

extension GOVUKButton: WrappableButton {}

struct SwiftUIButton<WrappedButton: WrappableButton>: UIViewRepresentable {
    private let viewModel: ButtonViewModel

    let title: String
    let icon: String?

    init(title: String,
         icon: String? = nil,
         viewModel: ButtonViewModel
    ) {
        self.title = title
        self.icon = icon
        self.viewModel = viewModel
    }

    func makeUIView(context: Context) -> WrappedButton {
        let button = WrappedButton(viewModel: viewModel)

        return button
    }

    func updateUIView(_ uiView: WrappedButton, context: Context) {
            // required for protocol conformance
    }
}
