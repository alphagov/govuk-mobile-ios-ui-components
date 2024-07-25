import XCTest

@testable import UIComponents

final class ButtonConfigurationTests: XCTestCase {
    func test_primary_returnsExpectedConfiguration() {
        let sut = GOVUKButton.ButtonConfiguration.primary

        XCTAssertEqual(sut.titleColorNormal, 
                       UIColor.govUK.text.buttonPrimary)
        XCTAssertEqual(sut.titleColorHighlighted, nil)
        XCTAssertEqual(sut.titleColorFocused, 
                       UIColor.govUK.text.buttonPrimaryFocussed)
        XCTAssertEqual(sut.titleFont, UIFont.bodySemiBold)
        XCTAssertEqual(sut.backgroundColorNormal,
                       UIColor.govUK.fills.surfaceButtonPrimary)
        XCTAssertEqual(sut.backgroundColorHighlighted,
                       UIColor.govUK.fills.surfaceButtonPrimaryHighlight)
        XCTAssertEqual(sut.backgroundColorFocused,
                       UIColor.govUK.fills.surfaceButtonPrimaryFocussed)
        XCTAssertEqual(sut.cornerRadius, 22)
    }

    func test_secondary_returnsExpectedConfiguration() {
        let sut = GOVUKButton.ButtonConfiguration.secondary

        XCTAssertEqual(sut.titleColorNormal,
                       UIColor.govUK.text.buttonSecondary)
        XCTAssertEqual(sut.titleColorHighlighted,
                       UIColor.govUK.text.buttonSecondaryHighlight)
        XCTAssertEqual(sut.titleColorFocused, UIColor.govUK.text.buttonSecondaryFocussed)
        XCTAssertEqual(sut.titleFont, .body)
        XCTAssertEqual(sut.backgroundColorNormal, .clear)
        XCTAssertEqual(sut.backgroundColorHighlighted, .clear)
        XCTAssertEqual(sut.backgroundColorFocused,
                       UIColor.govUK.fills.surfaceButtonSecondaryFocussed)
    }
}
