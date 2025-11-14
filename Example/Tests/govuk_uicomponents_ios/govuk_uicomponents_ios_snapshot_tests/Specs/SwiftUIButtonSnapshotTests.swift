import Foundation
import SwiftUI
import XCTest
import iOSSnapshotTestCase

@testable import govuk_uicomponents_ios
@testable import UIComponents

@MainActor
final class SwiftUIButtonSnapshotTests: SnapshotTestCase {
    func test_primary_swiftui_rendersCorrectly() {
        let view = SwiftUIButtonStateView(
            viewModel: .init(title: "Primary", config: .primary, width: 200)
        )
        let hosting = UIHostingController(rootView: view)
        let nav = UINavigationController(rootViewController: hosting)
        nav.navigationBar.prefersLargeTitles = true

        hosting.updateFocusIfNeeded()

        VerifySnapshotInWindow(nav)
    }

    func test_secondary_swiftui_rendersCorrectly() {
        let view = SwiftUIButtonStateView(
            viewModel: .init(title: "Secondary", config: .secondary, width: 200)
        )
        let hosting = UIHostingController(rootView: view)
        let nav = UINavigationController(rootViewController: hosting)
        nav.navigationBar.prefersLargeTitles = true

        VerifySnapshotInWindow(nav)
    }

    func test_compact_swiftui_rendersCorrectly() {
        let view = SwiftUIButtonStateView(
            viewModel: .init(title: "Compact", config: .compact, width: 120)
        )
        let hosting = UIHostingController(rootView: view)
        let nav = UINavigationController(rootViewController: hosting)
        nav.navigationBar.prefersLargeTitles = true

        VerifySnapshotInWindow(nav)
    }

    func test_destructive_swiftui_rendersCorrectly() {
        let view = SwiftUIButtonStateView(
            viewModel: .init(title: "Destructive", config: .destructive, width: 140)
        )
        let hosting = UIHostingController(rootView: view)
        let nav = UINavigationController(rootViewController: hosting)
        nav.navigationBar.prefersLargeTitles = true

        VerifySnapshotInWindow(nav)
    }
}
