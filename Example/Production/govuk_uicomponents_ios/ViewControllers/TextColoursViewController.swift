import UIKit
import UIComponents

class TextColoursViewController: UIViewController {
    private let colors: [(name: String, color: UIColor)] = [
        ("Primary", .govUK.text.primary),
        ("Secondary", .govUK.text.secondary),
        ("Link", .govUK.text.link),
        ("Button Success", .govUK.text.buttonSuccess),
        ("Button Primary", .govUK.text.buttonPrimary),
        ("Button Primary Focussed", .govUK.text.buttonPrimaryFocussed),
        ("Button Primary Disabled", .govUK.text.buttonPrimaryDisabled),
        ("Button Secondary", .govUK.text.buttonSecondary),
        ("Button Secondary Highlight", .govUK.text.buttonSecondaryHighlight),
        ("Button Secondary Focussed", .govUK.text.buttonSecondaryFocussed),
        ("Button Secondary Disabled", .govUK.text.buttonSecondaryDisabled),
        ("Button Compact", .govUK.text.buttonCompact),
        ("Button Compact Highlight", .govUK.text.buttonCompactHighlight),
        ("Button Compact Focussed", .govUK.text.buttonCompactFocussed),
        ("Button Compact Disabled", .govUK.text.buttonCompactDisabled),
        ("Trailing Icon", .govUK.text.trailingIcon),
        ("Chat Text Area", .govUK.text.chatTextArea),
        ("List Selected", .govUK.text.listSelected),
        ("List Unselected", .govUK.text.listUnselected)
    ]

    private let blackTextOverrides: [String] = [
        "List Selected",
        "Button Primary"
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
        let textColour: UIColor = blackTextOverrides.contains(name) ? .black : .white
        label.textColor = textColour
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
