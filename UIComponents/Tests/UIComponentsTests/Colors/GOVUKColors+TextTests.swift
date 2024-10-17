import XCTest

@testable import UIComponents

final class GOVUKColors_TextTests: XCTestCase {
    func test_primary_returnsExpectedResult() {
        let result = UIColor.govUK.text.primary

        XCTAssertEqual(result.lightMode, .black)
        XCTAssertEqual(result.darkMode, .white)
    }

    func test_secondaryreturnsExpectedResult() {
        let result = UIColor.govUK.text.secondary

        XCTAssertEqual(result.lightMode, .grey700)
        XCTAssertEqual(result.darkMode, .grey300)
    }

    func test_link_returnsExpectedResult() {
        let result = UIColor.govUK.text.link

        XCTAssertEqual(result.lightMode, .blue1)
        XCTAssertEqual(result.darkMode, .blue2)
    }

    func test_buttonPrimary_returnsExpectedResult() {
        let result = UIColor.govUK.text.buttonPrimary

        XCTAssertEqual(result.lightMode, .white)
        XCTAssertEqual(result.darkMode, .black)
    }

    func test_buttonPrimaryFocussed_returnsExpectedResult() {
        let result = UIColor.govUK.text.buttonPrimaryFocussed

        XCTAssertEqual(result.lightMode, .black)
        XCTAssertEqual(result.darkMode, .black)
    }

    func test_buttonPrimaryDisabled_returnsExpectedResult() {
        let result = UIColor.govUK.text.buttonPrimaryDisabled

        XCTAssertEqual(result.lightMode, .grey600)
        XCTAssertEqual(result.darkMode, .black)
    }

    func test_buttonSecondary_returnsExpectedResult() {
        let result = UIColor.govUK.text.buttonSecondary

        XCTAssertEqual(result.lightMode, .blue1)
        XCTAssertEqual(result.darkMode, .blue2)
    }

    func test_buttonSecondaryHighlight_returnsExpectedResult() {
        let result = UIColor.govUK.text.buttonSecondaryHighlight

        XCTAssertEqual(result.lightMode, .blue5)
        XCTAssertEqual(result.darkMode, .blue6)
    }

    func test_buttonSecondaryFocussed_returnsExpectedResult() {
        let result = UIColor.govUK.text.buttonSecondaryFocussed

        XCTAssertEqual(result.lightMode, .black)
        XCTAssertEqual(result.darkMode, .black)
    }

    func test_buttonSecondaryDisabled_returnsExpectedResult() {
        let result = UIColor.govUK.text.buttonSecondaryDisabled

        XCTAssertEqual(result.lightMode, .grey700)
        XCTAssertEqual(result.darkMode, .grey300)
    }

    func test_buttonCompact_returnsExpectedResult() {
        let result = UIColor.govUK.text.buttonCompact

        XCTAssertEqual(result.lightMode, .blue1)
        XCTAssertEqual(result.darkMode, .blue2)
    }

    func test_buttonCompactHighlight_returnsExpectedResult() {
        let result = UIColor.govUK.text.buttonCompactHighlight

        XCTAssertEqual(result.lightMode, .blue5)
        XCTAssertEqual(result.darkMode, .blue6)
    }

    func test_buttonCompactFocussed_returnsExpectedResult() {
        let result = UIColor.govUK.text.buttonCompactFocussed

        XCTAssertEqual(result.lightMode, .black)
        XCTAssertEqual(result.darkMode, .black)
    }

    func test_buttonCompactDisabled_returnsExpectedResult() {
        let result = UIColor.govUK.text.buttonCompactDisabled

        XCTAssertEqual(result.lightMode, .grey600)
        XCTAssertEqual(result.darkMode, .black)
    }

    func test_trailingIcon_returnsExpectedResult() {
        let result = UIColor.govUK.text.trailingIcon

        XCTAssertEqual(result.lightMode, .grey300)
        XCTAssertEqual(result.darkMode, .grey500)
    }
}
