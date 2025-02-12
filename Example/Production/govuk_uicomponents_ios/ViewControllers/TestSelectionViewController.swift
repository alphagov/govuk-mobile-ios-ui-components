import UIKit
import UIComponents

class TestSelectionViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false

        func createButton(title: String, action: Selector) -> UIButton {
            let button = UIButton(type: .system)
            button.setTitle(title, for: .normal)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .govUK.text.link
            button.layer.cornerRadius = 10
            button.heightAnchor.constraint(equalToConstant: 60).isActive = true
            button.addTarget(self, action: action, for: .touchUpInside)
            return button
        }

        let buttonTestButton = createButton(title: "Buttons", action: #selector(openButtonTests))
        let fontTestButton = createButton(title: "Fonts", action: #selector(openFontTests))
        let colourTestButton = createButton(title: "Colours", action: #selector(openColourTests))


        stackView.addArrangedSubview(buttonTestButton)
        stackView.addArrangedSubview(fontTestButton)
        stackView.addArrangedSubview(colourTestButton)
        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
    }

    @objc private func openButtonTests() {
        navigationController?.pushViewController(ButtonTestingViewController(), animated: false)
    }

    @objc private func openFontTests() {
        navigationController?.pushViewController(FontTestingViewController(), animated: false)
    }

    @objc private func openColourTests() {
        navigationController?.pushViewController(ColourSelectionViewController(), animated: false)
    }
}
