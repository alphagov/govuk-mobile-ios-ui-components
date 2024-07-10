import SwiftUI

protocol WrappableButton: UIButton {
    // want to change this to view model init
    init(action: UIAction)
}

extension WrappableButton { }

extension GOVUKButton: WrappableButton {}

struct SwiftUIButton<WrappedButton: WrappableButton>: UIViewRepresentable {
    private let action: UIAction

    let title: String
    let icon: String?

    init(title: String,
         icon: String? = nil,
         action:
         @escaping () -> Void) {
        self.title = title
        self.icon = icon
        self.action = UIAction { _ in
            action()
        }
    }

    func makeUIView(context: Context) -> WrappedButton {
        let button = WrappedButton(action: action)

        button.setTitle(title, for: .normal)

        return button
    }

    func updateUIView(_ uiView: WrappedButton, context: Context) {
            // required for protocol conformance
    }

    func makeCoordinator() -> Self.Coordinator {
            // required for protocol conformance
    }
}
