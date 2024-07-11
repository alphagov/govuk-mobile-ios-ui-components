import SwiftUI

public protocol WrappableButton: GOVUKButton {
    var viewModel: ButtonViewModel? { get }
    // want to change this to view model init
    init()
    init(viewModel: ButtonViewModel)
}

extension GOVUKButton: WrappableButton {}

struct SwiftUIWrappedButton<WrappedButton: WrappableButton>: UIViewRepresentable {
    let viewModel: ButtonViewModel

    init(viewModel: ButtonViewModel) {
        self.viewModel = viewModel
    }

    func makeUIView(context: Context) -> WrappedButton {
        let button = WrappedButton(viewModel: viewModel)
        button.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)

        return button
    }

    func updateUIView(_ uiView: WrappedButton, context: Context) {
            // required for protocol conformance
    }
}


public struct SwiftUIButton<WrappedButton: WrappableButton>: View {
    public let viewModel: ButtonViewModel

    public var body: some View {
        SwiftUIWrappedButton<WrappedButton>(viewModel: viewModel)
            .fixedSize(horizontal: false, vertical: true)
    }

    public init(viewModel: ButtonViewModel) {
        self.viewModel = viewModel
    }
}

public struct PrimaryButtonViewModel: ButtonViewModel {
    public let localisedTitle: String
    public let action: () async throws -> Void
    public let buttonConfiguration: GOVUKButton.ButtonConfiguration? = .primary

    public init(localisedTitle: String, action: @escaping () -> Void) {
        self.localisedTitle = localisedTitle
        self.action = action
    }
}
