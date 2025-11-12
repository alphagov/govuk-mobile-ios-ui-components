import Foundation
import SwiftUI
import XCTest
import iOSSnapshotTestCase

@testable import govuk_uicomponents_ios
@testable import UIComponents

@MainActor
class GOVUKUIComponentsSnapshotTests: FBSnapshotTestCase {
    override func setUp() {
        super.setUp()
//        self.recordMode = true
    }

    func test_buttons_rendersCorrectly() {
        let viewController = ButtonTestingViewController()
        let nav = UINavigationController(rootViewController: viewController)
        nav.navigationBar.prefersLargeTitles = false

        let window = UIApplication.shared.windows.first
        window?.rootViewController = nav
        window?.makeKeyAndVisible()

        FBSnapshotVerifyView(nav.view)
    }

    func test_font_rendersCorrectly() {
        let viewController = FontTestingViewController()
        let nav = UINavigationController(rootViewController: viewController)
        nav.navigationBar.prefersLargeTitles = true

        let window = UIApplication.shared.windows.first
        window?.rootViewController = nav
        window?.makeKeyAndVisible()

        FBSnapshotVerifyView(nav.view)
    }

    func test_colours_fills_rendersCorrectly() {
        let viewController = FillsColoursViewController()
        let nav = UINavigationController(rootViewController: viewController)
        nav.navigationBar.prefersLargeTitles = true

        let window = UIApplication.shared.windows.first
        window?.rootViewController = nav
        window?.makeKeyAndVisible()

        FBSnapshotVerifyView(nav.view)
    }

    func test_colours_strokes_rendersCorrectly() {
        let viewController = StrokesColoursViewController()
        let nav = UINavigationController(rootViewController: viewController)
        nav.navigationBar.prefersLargeTitles = true

        let window = UIApplication.shared.windows.first
        window?.rootViewController = nav
        window?.makeKeyAndVisible()

        FBSnapshotVerifyView(nav.view)
    }

    func test_colours_text_rendersCorrectly() {
        let viewController = TextColoursViewController()
        let nav = UINavigationController(rootViewController: viewController)
        nav.navigationBar.prefersLargeTitles = true

        let window = UIApplication.shared.windows.first
        window?.rootViewController = nav
        window?.makeKeyAndVisible()

        FBSnapshotVerifyView(nav.view)
    }
}
