import Foundation
import UIKit
import UIComponents

struct ButtonStateViewModel {
    let title: String
    let config: GOVUKButton.ButtonConfiguration
    let width: CGFloat
}

class ButtonStateViewController: UIViewController {
    private lazy var stackView: UIStackView = UIStackView()
    private let viewModel: ButtonStateViewModel

    init(viewModel: ButtonStateViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = viewModel.title
        configureUI()
        configureConstraints()
    }

    private func configureUI() {
        view.backgroundColor = .white
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .top
        stackView.distribution = .equalSpacing
        stackView.spacing = 16
        view.addSubview(stackView)
        loadButtons()
    }

    private func configureConstraints() {
        stackView.topAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.topAnchor,
            constant: 30
        ).isActive = true
        stackView.rightAnchor.constraint(
            equalTo: view.layoutMarginsGuide.rightAnchor
        ).isActive = true
        stackView.bottomAnchor.constraint(
            lessThanOrEqualTo: view.safeAreaLayoutGuide.bottomAnchor
        ).isActive = true
        stackView.leftAnchor.constraint(
            equalTo: view.layoutMarginsGuide.leftAnchor
        ).isActive = true
    }

    private func loadButtons() {
        let activeButton = newButton()
        stackView.addArrangedSubview(
            buttonStack(title: "Default", button: activeButton)
        )

        let highlightedButton = newButton()
        highlightedButton.isHighlighted = true
        stackView.addArrangedSubview(
            buttonStack(title: "Highlighted", button: highlightedButton)
        )

        let disabledButton = newButton()
        disabledButton.isEnabled = false
        stackView.addArrangedSubview(
            buttonStack(title: "Disabled", button: disabledButton)
        )

        let focussedButton = newButton()
        stackView.addArrangedSubview(
            buttonStack(title: "Focussed", button: focussedButton)
        )
        focussedButton.accessibilityElementDidBecomeFocused()
    }

    private func buttonStack(title: String,
                             button: UIButton) -> UIStackView {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 16

        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        stack.addArrangedSubview(titleLabel)
        stack .addArrangedSubview(button)
        return stack
    }

    private func newButton() -> UIButton {
        let button = GOVUKButton(viewModel.config)
        button.widthAnchor.constraint(equalToConstant: viewModel.width).isActive = true
        button.setTitle(viewModel.title, for: .normal)
        return button
    }
}
