// swiftlint:disable function_body_length
import UIComponents
import UIKit

struct MockViewModel: ButtonViewModel {
    var localisedTitle: String = "configured button"

    var action: () async throws -> Void

    var buttonConfiguration: GOVUKButton.ButtonConfiguration? = .init(
        titleNormal: .magenta,
        titleFocused: .green,
        titleFont: .title3,
        backgroundNormal: .green,
        backgroundFocused: .cyan,
        backgroundShape: .roundedRect(5)
    )

    init(action: @escaping () -> Void) {
        self.action = action
    }
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "UIKit screen"

        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fill
        stack.alignment = .fill
        stack.isLayoutMarginsRelativeArrangement = true
        stack.spacing = 16


        let swiftUIScreenViewVM = ButtonScreenViewModel()
        let swiftUIVC = HostingViewController<SwiftUIComponentsScreen>(viewModel: swiftUIScreenViewVM)

        var action: () async throws -> Void {
            {
            if let navController = self.navigationController {
                navController.pushViewController(swiftUIVC, animated: true)
            }
            }
        }

        let uiAction = UIAction { _ in
            Task {
                do {
                    print("button action tapped")
                    try await action()
                }
            }
        }

        let button = GOVUKButton(.primary)
        button.setTitle("primary button", for: .normal)
        button.addAction(uiAction, for: .touchUpInside)


        let viewModel = MockViewModel {
            print("button tapped")
        }

        let button2 = GOVUKButton(viewModel: viewModel)
//        let button = GOVUKButton(.primary)
            //        button.viewModelUpdate(viewModel: viewModel)


        button2.addAction(uiAction, for: .touchUpInside)

        let button3VM = PlainButtonViewModel(localisedTitle: "plain button") {
            Task {
                try? await action()
            }
        }

        let button3 = UIButton.govUK(viewModel: button3VM)
//        button2.setTitle("Another button", for: .normal)
//        button2.setTitleColor(.label, for: .normal)

        stack.addArrangedSubview(button)
        stack.addArrangedSubview(button2)
        stack.addArrangedSubview(button3)

        view.addSubview(stack)

        stack.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: stack.leadingAnchor, constant: -16),
            view.trailingAnchor.constraint(equalTo: stack.trailingAnchor, constant: 16),
            view.topAnchor.constraint(lessThanOrEqualTo: stack.topAnchor, constant: -100),
            view.bottomAnchor.constraint(greaterThanOrEqualTo: stack.bottomAnchor, constant: 30),

            button3.topAnchor.constraint(equalTo: button2.bottomAnchor, constant: 16)
        ])

        view.backgroundColor = .tertiarySystemBackground
    }
}
// swiftlint:enable function_body_length
