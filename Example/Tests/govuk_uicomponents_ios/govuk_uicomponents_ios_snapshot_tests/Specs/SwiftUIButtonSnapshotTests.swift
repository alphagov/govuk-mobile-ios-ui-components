import Foundation
import SwiftUI
import XCTest
import iOSSnapshotTestCase

@testable import govuk_uicomponents_ios
@testable import UIComponents

@MainActor
final class SwiftUIButtonSnapshotTests: FBSnapshotTestCase {
    func test_primary_swiftui_rendersCorrectly() {
        let view = SwiftUIButtonStateView(
            viewModel: .init(title: "Primary", config: .primary, width: 200)
        )
        let hosting = UIHostingController(rootView: view)
        let nav = UINavigationController(rootViewController: hosting)
        nav.navigationBar.prefersLargeTitles = true

        let scenes = UIApplication.shared.connectedScenes
        let windowScenes = scenes.first as? UIWindowScene
        let window = windowScenes?.windows.first
        window?.rootViewController = nav
        window?.makeKeyAndVisible()

        hosting.updateFocusIfNeeded()

        FBSnapshotVerifyView(nav.view)
    }

    func test_secondary_swiftui_rendersCorrectly() {
        let view = SwiftUIButtonStateView(
            viewModel: .init(title: "Secondary", config: .secondary, width: 200)
        )
        let hosting = UIHostingController(rootView: view)
        let nav = UINavigationController(rootViewController: hosting)
        nav.navigationBar.prefersLargeTitles = true

        let scenes = UIApplication.shared.connectedScenes
        let windowScenes = scenes.first as? UIWindowScene
        let window = windowScenes?.windows.first
        window?.rootViewController = nav
        window?.makeKeyAndVisible()

        FBSnapshotVerifyView(nav.view)
    }

    func test_compact_swiftui_rendersCorrectly() {
        let view = SwiftUIButtonStateView(
            viewModel: .init(title: "Compact", config: .compact, width: 120)
        )
        let hosting = UIHostingController(rootView: view)
        let nav = UINavigationController(rootViewController: hosting)
        nav.navigationBar.prefersLargeTitles = true

        let scenes = UIApplication.shared.connectedScenes
        let windowScenes = scenes.first as? UIWindowScene
        let window = windowScenes?.windows.first
        window?.rootViewController = nav
        window?.makeKeyAndVisible()

        FBSnapshotVerifyView(nav.view)
    }
}
