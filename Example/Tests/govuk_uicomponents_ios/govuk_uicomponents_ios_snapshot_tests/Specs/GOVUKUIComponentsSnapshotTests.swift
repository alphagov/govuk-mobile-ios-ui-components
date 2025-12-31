import Foundation
import SwiftUI
import XCTest
import iOSSnapshotTestCase

@testable import govuk_uicomponents_ios
@testable import UIComponents

@MainActor
class GOVUKUIComponentsSnapshotTests: SnapshotTestCase {
    func test_buttons_rendersCorrectly() {
        let viewController = ButtonTestingViewController()
        VerifySnapshot(viewController)
    }

    func test_font_rendersCorrectly() {
        let viewController = FontTestingViewController()
        VerifySnapshot(viewController)
    }

    func test_colours_fills_rendersCorrectly() {
        let viewController = FillsColoursViewController()
        VerifySnapshot(viewController)
    }

    func test_colours_strokes_rendersCorrectly() {
        let viewController = StrokesColoursViewController()
        VerifySnapshot(viewController)
    }

    func test_colours_text_rendersCorrectly() {
        let viewController = TextColoursViewController()
        VerifySnapshot(viewController)
    }
}
