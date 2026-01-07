import Foundation
import SwiftUI
import XCTest
import iOSSnapshotTestCase

@testable import govuk_uicomponents_ios
@testable import UIComponents

@MainActor
final class SectionHeaderLabelViewSnapshotTests: SnapshotTestCase  {

    func test_withButton_rendersCorrectly() {
        let sut = SectionHeaderLabelView(
            model: SectionHeaderLabelViewModel(
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

    func test_withoutButton_rendersCorrectly() {
        let sut = SectionHeaderLabelView(
            model: SectionHeaderLabelViewModel(
                title: "headerTitle"
            )
        ).frame(width: 300, height: 150)

        let hosting = UIHostingController(rootView: sut)
        VerifySnapshotInWindow(hosting)
    }

}
