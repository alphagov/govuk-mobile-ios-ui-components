// swiftlint:disable function_body_length
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
            action: { /* no action */ }
        )

        let button2 = GOVUKButton(.mockConfig, viewModel: viewModel)
        button2.addAction(uiAction, for: .touchUpInside)

        let button3VM = GOVUKButton.ButtonViewModel(
            localisedTitle: "secondary button",
            action: { [weak self] in
                self?.pushSwiftUIView()
            })

        let button3 = GOVUKButton(.secondary)
        button3.viewModel = button3VM

        let label = UILabel()
        label.text = "Caption2 label"
        label.font = UIFont.govUK.caption2

        let label1 = UILabel()
        label1.text = "Caption2 label italic"
        label1.font = UIFont.govUK.caption2Italic

        let label2 = UILabel()
        label2.text = "Caption2 label bold and italic"
        label2.font = UIFont.govUK.caption2SemiboldItalic

        let label3 = UILabel()
        label3.text = "Caption2 label bold"
        label3.font = UIFont.govUK.caption2Semibold

        stack.addArrangedSubview(label)
        stack.addArrangedSubview(label1)
        stack.addArrangedSubview(label2)
        stack.addArrangedSubview(label3)

        stack.addArrangedSubview(button)
        stack.addArrangedSubview(button2)
        stack.addArrangedSubview(button3)

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
// swiftlint:enable function_body_length
