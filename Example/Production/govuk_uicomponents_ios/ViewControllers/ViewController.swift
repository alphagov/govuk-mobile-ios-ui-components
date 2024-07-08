import UIComponents
import UIKit


class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fill
        stack.alignment = .fill
        stack.isLayoutMarginsRelativeArrangement = true
        stack.spacing = 16

        let button = UIButton.govUK.primary

        button.setTitle("Welcome to the GOV.UK app", for: .normal)

        let button2 = UIButton.govUK
        button2.setTitle("Another button", for: .normal)
        button2.setTitleColor(.label, for: .normal)

        stack.addArrangedSubview(button)
        stack.addArrangedSubview(button2)

        view.addSubview(stack)

        stack.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: stack.leadingAnchor, constant: -16),
            view.trailingAnchor.constraint(equalTo: stack.trailingAnchor, constant: 16),
            view.topAnchor.constraint(lessThanOrEqualTo: stack.topAnchor, constant: -100),
            view.bottomAnchor.constraint(greaterThanOrEqualTo: stack.bottomAnchor, constant: 30),

            button2.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 16)
        ])

        view.backgroundColor = .tertiarySystemBackground
    }
}
