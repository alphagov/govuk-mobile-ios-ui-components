import Foundation
import SwiftUI
import XCTest
import iOSSnapshotTestCase

@testable import govuk_uicomponents_ios
@testable import UIComponents

@MainActor
class GOVUKButtonSnapshotTests: SnapshotTestCase {
    func test_primary_rendersCorrectly() {
        let viewController = ButtonStateViewController(
            viewModel: .init(title: "Primary", config: .primary, width: 200)
        )
        let nav = UINavigationController(rootViewController: viewController)
        nav.navigationBar.prefersLargeTitles = true

        VerifySnapshotInWindow(nav)
    }

    func test_secondary_rendersCorrectly() {
        let viewController = ButtonStateViewController(
            viewModel: .init(title: "Secondary", config: .secondary, width: 200)
        )
        let nav = UINavigationController(rootViewController: viewController)
        nav.navigationBar.prefersLargeTitles = true

        VerifySnapshotInWindow(nav)
    }

    func test_compact_rendersCorrectly() {
        let viewController = ButtonStateViewController(
            viewModel: .init(title: "Compact", config: .compact, width: 120)
        )
        let nav = UINavigationController(rootViewController: viewController)
        nav.navigationBar.prefersLargeTitles = true

        VerifySnapshotInWindow(nav)
    }

    func test_destructive_rendersCorrectly() {
        let viewController = ButtonStateViewController(
            viewModel: .init(title: "Destructive", config: .destructive, width: 150)
        )
        let nav = UINavigationController(rootViewController: viewController)
        nav.navigationBar.prefersLargeTitles = true

        VerifySnapshotInWindow(nav)
    }

    func test_primary_button_default() {
        let button = GOVUKButton(.primary)
        button.setTitle("primary", for: .normal)

        button.frame.size = CGSize(width: 200, height: 47)

        VerifySnapshot(button)
    }

    func test_primary_button_highlighted() {
        let button = GOVUKButton(.primary)
        button.setTitle("primary", for: .normal)
        button.isHighlighted = true

        button.frame.size = CGSize(width: 200, height: 47)

        VerifySnapshot(button)
    }

    func test_primary_button_disabled() {
        let button = GOVUKButton(.primary)
        button.setTitle("primary", for: .normal)
        button.isEnabled = false

        button.frame.size = CGSize(width: 200, height: 47)

        VerifySnapshot(button)
    }

    func test_secondary_button_default() {
        let button = GOVUKButton(.secondary)
        button.setTitle("secondary", for: .normal)

        button.frame.size = CGSize(width: 200, height: 47)

        VerifySnapshot(button)
    }

    func test_secondary_button_highlighted() {
        let button = GOVUKButton(.secondary)
        button.setTitle("secondary", for: .normal)
        button.isHighlighted = true

        button.frame.size = CGSize(width: 200, height: 47)

        VerifySnapshot(button)
    }

    func test_secondary_button_disabled() {
        let button = GOVUKButton(.secondary)
        button.setTitle("secondary", for: .normal)
        button.isEnabled = false

        button.frame.size = CGSize(width: 200, height: 47)

        VerifySnapshot(button)
    }

    func test_compact_button_default() {
        let button = GOVUKButton(.compact)
        button.setTitle("compact", for: .normal)

        button.frame.size = CGSize(width: 200, height: 47)

        VerifySnapshot(button)
    }

    func test_compact_button_highlighted() {
        let button = GOVUKButton(.compact)
        button.setTitle("compact", for: .normal)
        button.isHighlighted = true

        button.frame.size = CGSize(width: 200, height: 47)

        VerifySnapshot(button)
    }

    func test_compact_button_disabled() {
        let button = GOVUKButton(.compact)
        button.setTitle("compact", for: .normal)
        button.isEnabled = false

        button.frame.size = CGSize(width: 200, height: 47)

        VerifySnapshot(button)
    }

    func test_destructive_button_default() {
        let button = GOVUKButton(.destructive)
        button.setTitle("destructive", for: .normal)

        button.frame.size = CGSize(width: 200, height: 47)

        VerifySnapshot(button)
    }

    func test_destructive_button_highlighted() {
        let button = GOVUKButton(.destructive)
        button.setTitle("destructive", for: .normal)
        button.isHighlighted = true

        button.frame.size = CGSize(width: 200, height: 47)

        VerifySnapshot(button)
    }

    func test_destructive_button_disabled() {
        let button = GOVUKButton(.destructive)
        button.setTitle("destructive", for: .normal)
        button.isEnabled = false

        button.frame.size = CGSize(width: 200, height: 47)

        VerifySnapshot(button)
    }

}
