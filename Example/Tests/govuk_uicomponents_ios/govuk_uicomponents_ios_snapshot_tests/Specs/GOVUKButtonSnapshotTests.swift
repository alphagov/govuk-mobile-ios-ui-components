import Foundation
import SwiftUI
import XCTest
import iOSSnapshotTestCase

@testable import govuk_uicomponents_ios
@testable import UIComponents

@MainActor
class GOVUKButtonSnapshotTests: FBSnapshotTestCase {

    func test_primary_rendersCorrectly() {
        let viewController = ButtonStateViewController(
            viewModel: .init(title: "Primary", config: .primary, width: 200)
        )
        let nav = UINavigationController(rootViewController: viewController)
        nav.navigationBar.prefersLargeTitles = true

        let window = UIApplication.shared.windows.first
        window?.rootViewController = nav
        window?.makeKeyAndVisible()

        FBSnapshotVerifyView(nav.view)
    }

    func test_secondary_rendersCorrectly() {
        let viewController = ButtonStateViewController(
            viewModel: .init(title: "Secondary", config: .secondary, width: 200)
        )
        let nav = UINavigationController(rootViewController: viewController)
        nav.navigationBar.prefersLargeTitles = true

        let window = UIApplication.shared.windows.first
        window?.rootViewController = nav
        window?.makeKeyAndVisible()

        FBSnapshotVerifyView(nav.view)
    }

    func test_compact_rendersCorrectly() {
        let viewController = ButtonStateViewController(
            viewModel: .init(title: "Compact", config: .compact, width: 120)
        )
        let nav = UINavigationController(rootViewController: viewController)
        nav.navigationBar.prefersLargeTitles = true

        let window = UIApplication.shared.windows.first
        window?.rootViewController = nav
        window?.makeKeyAndVisible()

        FBSnapshotVerifyView(nav.view)
    }

    func test_primary_button_default() {
        let button = GOVUKButton(.primary)
        button.setTitle("primary", for: .normal)

        button.frame.size = CGSize(width: 200, height: 47)

        FBSnapshotVerifyView(button)
    }

    func test_primary_button_highlighted() {
        let button = GOVUKButton(.primary)
        button.setTitle("primary", for: .normal)
        button.isHighlighted = true

        button.frame.size = CGSize(width: 200, height: 47)

        FBSnapshotVerifyView(button)
    }

    func test_primary_button_disabled() {
        let button = GOVUKButton(.primary)
        button.setTitle("primary", for: .normal)
        button.isEnabled = false

        button.frame.size = CGSize(width: 200, height: 47)

        FBSnapshotVerifyView(button)
    }

    func test_secondary_button_default() {
        let button = GOVUKButton(.secondary)
        button.setTitle("secondary", for: .normal)

        button.frame.size = CGSize(width: 200, height: 47)

        FBSnapshotVerifyView(button)
    }

    func test_secondary_button_highlighted() {
        let button = GOVUKButton(.secondary)
        button.setTitle("secondary", for: .normal)
        button.isHighlighted = true

        button.frame.size = CGSize(width: 200, height: 47)

        FBSnapshotVerifyView(button)
    }

    func test_secondary_button_disabled() {
        let button = GOVUKButton(.secondary)
        button.setTitle("secondary", for: .normal)
        button.isEnabled = false

        button.frame.size = CGSize(width: 200, height: 47)

        FBSnapshotVerifyView(button)
    }

    func test_compact_button_default() {
        let button = GOVUKButton(.compact)
        button.setTitle("compact", for: .normal)

        button.frame.size = CGSize(width: 200, height: 47)

        FBSnapshotVerifyView(button)
    }

    func test_compact_button_highlighted() {
        let button = GOVUKButton(.compact)
        button.setTitle("compact", for: .normal)
        button.isHighlighted = true

        button.frame.size = CGSize(width: 200, height: 47)

        FBSnapshotVerifyView(button)
    }

    func test_compact_button_disabled() {
        let button = GOVUKButton(.compact)
        button.setTitle("compact", for: .normal)
        button.isEnabled = false

        button.frame.size = CGSize(width: 200, height: 47)

        FBSnapshotVerifyView(button)
    }
}
