import Foundation
import SwiftUI
import XCTest
import iOSSnapshotTestCase

@testable import govuk_uicomponents_ios
@testable import UIComponents

@MainActor
final class CentreCardViewSnapshotTests: SnapshotTestCase {
    func test_primaryAndSecondaryTextProvided_rendersCorrectly() {
        let sut = CentreCardView(
            model: CentreCard(
                primaryText: "primary text",
                secondaryText: "secondary text"
            )
        ).frame(width: 300, height: 150)

        let hosting = UIHostingController(rootView: sut)
        hosting.view.backgroundColor = .lightGray

        VerifySnapshotInWindow(hosting)
    }

    func test_primaryTextProvided_rendersCorrectly() {
        let sut = CentreCardView(
            model: CentreCard(
                primaryText: "primary text"
            )
        ).frame(width: 300, height: 150)
        let hosting = UIHostingController(rootView: sut)
        hosting.view.backgroundColor = .lightGray

        VerifySnapshotInWindow(hosting)
    }

    func test_secondaryTextProvided_rendersCorrectly() {
        let sut = CentreCardView(
            model: CentreCard(
                secondaryText: "secondarytext"
            )
        ).frame(width: 300, height: 150)
        let hosting = UIHostingController(rootView: sut)
        hosting.view.backgroundColor = .lightGray

        VerifySnapshotInWindow(hosting)
    }

    func test_noTextProvided_rendersCorrectly() {
        let sut = CentreCardView(
            model: CentreCard()
        ).frame(width: 300, height: 150)
        let hosting = UIHostingController(rootView: sut)
        hosting.view.backgroundColor = .lightGray

        VerifySnapshotInWindow(hosting)
    }
}
