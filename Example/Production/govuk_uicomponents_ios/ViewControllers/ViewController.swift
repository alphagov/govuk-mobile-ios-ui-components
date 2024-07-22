import UIComponents
import UIKit

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

        let button = UIButton.govUK.primary
        button.setTitle("primary button", for: .normal)
        button.addAction(uiAction, for: .touchUpInside)

        let viewModel = GOVUKButton.ButtonViewModel(
            localisedTitle: "configured button",
            action: {}
        )

        let button2 = GOVUKButton(.mockConfig, viewModel: viewModel)
        button2.addAction(uiAction, for: .touchUpInside)

        let button3VM = GOVUKButton.ButtonViewModel(
            localisedTitle: "plain button",
            action: { [weak self] in
                self?.pushSwiftUIView()
            })

        let button3 = GOVUKButton(.secondary)
        button3.viewModel = button3VM

        let button4VM = GOVUKButton.ButtonViewModel(
            localisedTitle: "plain button - leading",
            action: { [weak self] in
                self?.pushSwiftUIView()
            })

        let button4 = GOVUKButton(.plainLeading)
//        let button4 = UIButton.govUK(viewModel: button4VM)
        button4.viewModel = button4VM

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
