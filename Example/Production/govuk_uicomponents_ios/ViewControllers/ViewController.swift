import UIComponents
import UIKit

struct MockViewModel: ButtonViewModel {
    var localisedTitle: String = "configured button"

    var action: () async throws -> Void

    var buttonConfiguration: GOVUKButton.ButtonConfiguration? = .init(
        titleColorNormal: .magenta,
        titleColorFocused: .green,
        titleFont: .title3,
        backgroundColorNormal: .green,
        backgroundColorFocused: .cyan,
        buttonShape: .roundedRect(5)
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

        let uiAction = UIAction { [weak self] _ in
            self?.pushSwiftUIView()
        }

        let button = GOVUKButton(.primary)
        button.setTitle("primary button", for: .normal)
        button.addAction(uiAction, for: .touchUpInside)

        let viewModel = MockViewModel {
            print("button tapped")
        }

        let button2 = GOVUKButton(viewModel: viewModel)
        button2.addAction(uiAction, for: .touchUpInside)

        let button3VM = PlainButtonViewModel(
            localisedTitle: "plain button",
            action: { [weak self] in
                self?.pushSwiftUIView()
            }
        )

        let button3 = UIButton.govUK(viewModel: button3VM)

        let button4VM = PlainButtonViewModel(
            localisedTitle: "plain button - leading",
            action: { [weak self] in
                self?.pushSwiftUIView()
            },
            configuration: .plainLeading
        )

        let button4 = UIButton.govUK(viewModel: button4VM)

        stack.addArrangedSubview(button)
        stack.addArrangedSubview(button2)
        stack.addArrangedSubview(button3)
        stack.addArrangedSubview(button4)

        view.addSubview(stack)

        stack.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: stack.leadingAnchor, constant: -16),
            view.trailingAnchor.constraint(equalTo: stack.trailingAnchor, constant: 16),
            view.topAnchor.constraint(lessThanOrEqualTo: stack.topAnchor, constant: -100),
            view.bottomAnchor.constraint(greaterThanOrEqualTo: stack.bottomAnchor, constant: 30)
        ])

        view.backgroundColor = .tertiarySystemBackground
    }

    private func pushSwiftUIView() {
        let swiftUIScreenViewVM = ButtonScreenViewModel()
        let swiftUIVC = HostingViewController<SwiftUIComponentsScreen>(viewModel: swiftUIScreenViewVM)
        navigationController?.pushViewController(swiftUIVC, animated: true)
    }
}
