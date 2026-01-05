import Foundation
import SwiftUI
import XCTest
import iOSSnapshotTestCase

@testable import govuk_uicomponents_ios
@testable import UIComponents

@MainActor
final class HeaderViewComponentSnapshotTests: SnapshotTestCase  {

    func test_secondaryButton_isNotNull_rendersCorrectly() async throws {
        let sut = HeaderViewComponent(
            model: HeaderComponent(
                title: "headerTitle",
                secondaryButton: .init(
                    title: "button title",
                    action: { }
                )
            )
        ).frame(width: 300, height: 150)
        let hosting = UIHostingController(rootView: sut)
        VerifySnapshotInWindow(hosting)
    }

    func test_secondaryButtonNull_rendersCorrectly() async throws {
        let sut = HeaderViewComponent(
            model: HeaderComponent(
                title: "headerTitle"
            )
        ).frame(width: 300, height: 150)

        let hosting = UIHostingController(rootView: sut)
        VerifySnapshotInWindow(hosting)
    }

}
