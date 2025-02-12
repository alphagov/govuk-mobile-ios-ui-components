//
import Foundation
import SwiftUI

import UIComponents

class ButtonTestingViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false

        let primaryButton = GOVUKButton(.primary)
        primaryButton.setTitle("Primary", for: .normal)

        let secondaryButton = GOVUKButton(.secondary)
        secondaryButton.setTitle("Secondary", for: .normal)

        let compactButton = GOVUKButton(.compact)
        compactButton.setTitle("Compact", for: .normal)

        stackView.addArrangedSubview(primaryButton)
        stackView.addArrangedSubview(secondaryButton)
        stackView.addArrangedSubview(compactButton)
        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
