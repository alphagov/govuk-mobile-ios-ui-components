import UIComponents
import UIKit


class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let button = UIButton.govUK.addBackgroundTo(color: .red)
        button.setTitle("Confirm your identity another way V", for: .normal)

        view.addSubview(button)

        button.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: button.leadingAnchor, constant: -50),
            view.trailingAnchor.constraint(equalTo: button.trailingAnchor, constant: 50),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

        button.setNeedsUpdateConstraints()

        button.updateConstraints()
        view.layoutSubviews()
        dump(button.bounds)
    }
}
