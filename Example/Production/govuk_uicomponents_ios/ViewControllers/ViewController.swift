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

        let button4VM = GOVUKButton.ButtonViewModel(
            localisedTitle: "compact",
            action: { [weak self] in
                self?.pushSwiftUIView()
            }
        )

        let button4 = GOVUKButton(.compact)
        button4.viewModel = button4VM

        let label = UILabel()
        label.text = "Caption2 label"
        label.font = UIFont.govUK.caption2
        label.adjustsFontForContentSizeCategory = true

        let label1 = UILabel()
        label1.text = "Caption2 label italic"
        label1.font = UIFont.govUK.caption2Italic
        label1.adjustsFontForContentSizeCategory = true

        let label2 = UILabel()
        label2.text = "Caption2 label semibold"
        label2.font = UIFont.govUK.caption2Semibold
        label2.adjustsFontForContentSizeCategory = true

        let label3 = UILabel()
        label3.text = "Title1 label"
        label3.font = UIFont.govUK.title1
        label3.adjustsFontForContentSizeCategory = true

        let label4 = UILabel()
        label4.text = "Title1 label bold"
        label4.font = UIFont.govUK.title1Bold
        label4.adjustsFontForContentSizeCategory = true

        let label5 = UILabel()
        label5.text = "Body label"
        label5.font = UIFont.govUK.body
        label5.adjustsFontForContentSizeCategory = true

        let label6 = UILabel()
        label6.text = "Body label italic"
        label6.font = UIFont.govUK.bodyItalic
        label6.adjustsFontForContentSizeCategory = true

        let label7 = UILabel()
        label7.text = "Body label semibold"
        label7.font = UIFont.govUK.bodySemibold
        label7.adjustsFontForContentSizeCategory = true

        stack.addArrangedSubview(label)
        stack.addArrangedSubview(label1)
        stack.addArrangedSubview(label2)
        stack.addArrangedSubview(label3)
        stack.addArrangedSubview(label4)
        stack.addArrangedSubview(label5)
        stack.addArrangedSubview(label6)
        stack.addArrangedSubview(label7)

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
// swiftlint:enable function_body_length
