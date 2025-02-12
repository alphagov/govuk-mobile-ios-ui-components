import Foundation
import SwiftUI

import UIComponents

class FontTestingViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false

        let fontStyles: [(text: String, style: UIFont.TextStyle)] = [
            ("Large Title", .largeTitle),
            ("Title 1", .title1),
            ("Title 2", .title2),
            ("Title 3", .title3),
            ("Headline", .headline),
            ("Sub Headline", .subheadline),
            ("Caption 1", .caption1),
            ("Caption 2", .caption2),
            ("Footnote", .footnote),
            ("Body", .body),
            ("Callout", .callout)
        ]

        fontStyles.forEach { text, style in
            let label = UILabel()
            label.text = text
            label.font = UIFont.preferredFont(forTextStyle: style)
            stackView.addArrangedSubview(label)
        }

        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
