import Foundation
import SwiftUI
import XCTest
import iOSSnapshotTestCase

@testable import govuk_uicomponents_ios
@testable import UIComponents

@MainActor
final class CentreCardViewSnapshotTests: FBSnapshotTestCase {

    override func setUp() {
        super.setUp()
        self.recordMode = false
    }

    func test_primaryAndSecondaryTextProvided_rendersCorrectly() {
        let view = CentreCardView(
            model: CentreCard(
                primaryText: "primary text",
                secondaryText: "secondary text"
            )
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

    func test_primaryTextProvided_rendersCorrectly() {
        let view = CentreCardView(
            model: CentreCard(
                primaryText: "primary text"
            )
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

    func test_secondaryTextProvided_rendersCorrectly() {
        let view = CentreCardView(
            model: CentreCard(
                secondaryText: "secondarytext"
            )
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

    func test_noTextProvided_rendersCorrectly() {
        let view = CentreCardView(
            model: CentreCard()
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
}
