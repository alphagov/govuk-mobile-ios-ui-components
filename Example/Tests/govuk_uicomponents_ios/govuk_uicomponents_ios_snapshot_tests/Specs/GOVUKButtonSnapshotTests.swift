import Foundation
import SwiftUI
import XCTest
import iOSSnapshotTestCase

@testable import govuk_uicomponents_ios
@testable import UIComponents

@MainActor
final class GOVUKButtonSnapshotTests: FBSnapshotTestCase {

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
}
