import UIKit
import UIComponents

class ColourSelectionViewController: UIViewController {
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

        let fillsButton = createButton(title: "Fills", action: #selector(openFills))
        let strokesButton = createButton(title: "Strokes", action: #selector(openStrokes))
        let textButton = createButton(title: "Text", action: #selector(openText))


        stackView.addArrangedSubview(fillsButton)
        stackView.addArrangedSubview(strokesButton)
        stackView.addArrangedSubview(textButton)
        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
    }

    @objc private func openFills() {
        navigationController?.pushViewController(FillsColoursViewController(), animated: false)
    }

    @objc private func openStrokes() {
        navigationController?.pushViewController(StrokesColoursViewController(), animated: false)
    }

    @objc private func openText() {
        navigationController?.pushViewController(TextColoursViewController(), animated: false)
    }
}
