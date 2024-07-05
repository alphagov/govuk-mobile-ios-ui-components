import UIComponents
import UIKit


class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .equalSpacing
        stack.alignment = .fill
        stack.isLayoutMarginsRelativeArrangement = true


//        let button = UIButton.govUK.addBackgroundTo(color: .red, buttonShape: .roundedRect(15))
//        let button = UIButton.govUK.addBackgroundTo(color: .red, buttonShape: .capsule)

        let button = UIButton.govUK.primary

        button.setTitle("Confirm your identity another way V", for: .normal)

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
            view.topAnchor.constraint(equalTo: stack.topAnchor, constant: -100),
            view.bottomAnchor.constraint(equalTo: stack.bottomAnchor, constant: 100),
            stack.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

        button.setNeedsUpdateConstraints()

        button.updateConstraints()
        view.layoutSubviews()
        dump(button.bounds)
    }
}
