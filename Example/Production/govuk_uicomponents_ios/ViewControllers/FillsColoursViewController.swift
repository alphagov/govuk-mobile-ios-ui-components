import UIKit
import UIComponents

class FillsColoursViewController: UIViewController {
    let colors: [(name: String, color: UIColor)] = [
        ("Surface Fixed Container", .govUK.fills.surfaceFixedContainer),
        ("Surface Full Screen", .govUK.fills.surfaceFullscreen),
        ("Surface Background", .govUK.fills.surfaceBackground),
        ("Surface List", .govUK.fills.surfaceList),
        ("Surface Card Default", .govUK.fills.surfaceCardDefault),
        ("Surface Card Blue", .govUK.fills.surfaceCardBlue),
        ("Surface Card Selected", .govUK.fills.surfaceCardSelected),
        ("Surface Button Primary", .govUK.fills.surfaceButtonPrimary),
        ("Surface Button Primary Highlight", .govUK.fills.surfaceButtonPrimaryHighlight),
        ("Surface Button Primary Focussed", .govUK.fills.surfaceButtonPrimaryFocussed),
        ("Surface Button Primary Disabled", .govUK.fills.surfaceButtonPrimaryDisabled),
        ("Surface Button Secondary", .govUK.fills.surfaceButtonSecondary),
        ("Surface Button Secondary Highlight", .govUK.fills.surfaceButtonSecondaryHighlight),
        ("Surface Button Secondary Focussed", .govUK.fills.surfaceButtonSecondaryFocussed),
        ("Surface Button Compact", .govUK.fills.surfaceButtonCompact),
        ("Surface Button Compact Highlight", .govUK.fills.surfaceButtonCompactHighlight),
        ("Surface Button Compact Focussed", .govUK.fills.surfaceButtonCompactFocussed),
        ("Surface Button Compact Disabled", .govUK.fills.surfaceButtonCompactDisabled),
        ("Surface Button Destructive", .govUK.fills.surfaceButtonDestructive),
        ("Surface Button Destructive Highlight", .govUK.fills.surfaceButtonDestructiveHighlight),
        ("Surface Modal", .govUK.fills.surfaceModal),
        ("Surface Search", .govUK.fills.surfaceSearch),
        ("Surface Home Header Background", .govUK.fills.surfaceHomeHeaderBackground),
        ("Surface Toggle Selected", .govUK.fills.surfaceToggleSelected),
        ("Surface Chat Question", .govUK.fills.surfaceChatQuestion),
        ("Surface Chat Answer", .govUK.fills.surfaceChatBlue),
        ("Surface Chat Action", .govUK.fills.surfaceChatAction),
        ("Surface Chat Background", .govUK.fills.surfaceChatBackground),
        ("Surface Chat Onboarding List Background", .govUK.fills.surfaceChatOnboardingListBackground),
        ("Surface Card Emergency Notable Death", .govUK.fills.surfaceCardEmergencyNotableDeath),
        ("Surface Card Emergency National", .govUK.fills.surfaceCardEmergencyNational),
        ("Surface Card Emergency Local", .govUK.fills.surfaceCardEmergencyLocal),
        ("Surface Card Emergency Info", .govUK.fills.surfaceCardEmergencyInfo)
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
            containerView.heightAnchor.constraint(equalToConstant: 25),

            label.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            label.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8),
            label.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -8)
        ])

        return containerView
    }
}
