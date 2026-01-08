import Foundation
import SwiftUI
import XCTest
import iOSSnapshotTestCase

@testable import govuk_uicomponents_ios
@testable import UIComponents

@MainActor
final class SectionHeaderLabelViewSnapshotTests: SnapshotTestCase  {

    func test_withButton_rendersCorrectly() {
        let viewModel = SectionHeaderLabelViewModel(
            title: "headerTitle",
            button: .init(
                localisedTitle: "button title",
                action: { }
            )
        )
        let sut = SectionHeaderLabelView(
            model: viewModel
        ).frame(width: 300, height: 150)
        let hosting = UIHostingController(rootView: sut)
        VerifySnapshotInWindow(hosting)
    }

    func test_withoutButton_rendersCorrectly() {
        let viewModel = SectionHeaderLabelViewModel(
            title: "headerTitle",
            button: nil
        )
        let sut = SectionHeaderLabelView(
            model: viewModel
        ).frame(width: 300, height: 150)

        let hosting = UIHostingController(rootView: sut)
        VerifySnapshotInWindow(hosting)
    }

}
