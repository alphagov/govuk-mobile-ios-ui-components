import UIKit
import UIComponents

class StrokesColoursViewController: UIViewController {
    let colors: [(name: String, color: UIColor)] = [
        ("List Divider", .govUK.strokes.listDivider),
        ("Page Control Inactive", .govUK.strokes.pageControlInactive),
        ("Card Blue", .govUK.strokes.cardBlue),
        ("Card Selected", .govUK.strokes.cardSelected),
        ("Chat Answer", .govUK.strokes.chatAnswer),
        ("Focused Chat Text Box", .govUK.strokes.focusedChatTextBox),
        ("Chat Action", .govUK.strokes.chatAction),
        ("Chat Onboarding List Divider", .govUK.strokes.chatOnboardingListDivider),
        ("Emergency Banner Notable Death Border", .govUK.strokes.surfaceCardEmergencyNotableDeath),
        ("Emergency Banner Info Border", .govUK.strokes.surfaceCardEmergencyInfo)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        setupColorBlocks()
    }

    private func setupColorBlocks() {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)

        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 5
        stackView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stackView)

        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 16),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -16),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -16),
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -32)
        ])

        for color in colors {
            let colorView = createColorBlock(name: color.name, color: color.color)
            stackView.addArrangedSubview(colorView)
        }
    }

    private func createColorBlock(name: String, color: UIColor) -> UIView {
        let containerView = UIView()
        containerView.backgroundColor = color
        containerView.clipsToBounds = true

        let label = UILabel()
        label.text = name
        label.textColor = .black
        label.font = .systemFont(ofSize: 16)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false

        containerView.addSubview(label)
        containerView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            containerView.heightAnchor.constraint(equalToConstant: 30),

            label.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            label.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8),
            label.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -8)
        ])

        return containerView
    }
}
