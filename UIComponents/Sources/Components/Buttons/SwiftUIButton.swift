import SwiftUI

public protocol WrappableButton: GOVUKButton {
    var viewModel: ButtonViewModel? { get }
    var buttonConfiguration: ButtonConfiguration? { get }
    // want to change this to view model init
//    init(viewModel: ButtonViewModel)
    init(_ configuration: GOVUKButton.ButtonConfiguration,
         viewModel: ButtonViewModel?)
}

extension GOVUKButton: WrappableButton { }

struct SwiftUIWrappedButton<WrappedButton: WrappableButton>: UIViewRepresentable {
    let config: GOVUKButton.ButtonConfiguration
    let viewModel: ButtonViewModel

    func makeUIView(context: Context) -> WrappedButton {
        let button = WrappedButton(config, viewModel: viewModel)
        button.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)

        return button
    }

    func updateUIView(_ uiView: WrappedButton, context: Context) {
            // required for protocol conformance
    }
}


public struct SwiftUIButton<WrappedButton: WrappableButton>: View {
    public let config: GOVUKButton.ButtonConfiguration
    public let viewModel: ButtonViewModel

    public var body: some View {
        SwiftUIWrappedButton<WrappedButton>(config: config, viewModel: viewModel)
            .fixedSize(horizontal: false, vertical: true)
    }

    public init(_ config: GOVUKButton.ButtonConfiguration,
                viewModel: ButtonViewModel) {
        self.config = config
        self.viewModel = viewModel
    }
}
