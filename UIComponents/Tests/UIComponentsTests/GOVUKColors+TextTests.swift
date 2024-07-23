import XCTest

@testable import UIComponents

final class GOVUKColors_TextTests: XCTestCase {
    func test_primary_light_returnsExpectedResult() {
        let result = UIColor.govuk.text.primary

        XCTAssertEqual(result.lightMode, .black)
    }

    func test_primary_dark_returnsExpectedResult() {
        let result = UIColor.govuk.text.primary

        XCTAssertEqual(result.darkMode, .white)
    }

    func test_secondary_light_returnsExpectedResult() {
        let result = UIColor.govuk.text.secondary

        XCTAssertEqual(result.lightMode, .grey700)
    }

    func test_secondary_dark_returnsExpectedResult() {
        let result = UIColor.govuk.text.secondary

        XCTAssertEqual(result.darkMode, .grey300)
    }

    func test_link_light_returnsExpectedResult() {
        let result = UIColor.govuk.text.link

        XCTAssertEqual(result.lightMode, .blue1)
    }

    func test_link_dark_returnsExpectedResult() {
        let result = UIColor.govuk.text.link

        XCTAssertEqual(result.darkMode, .blue2)
    }

    func test_buttonPrimary_light_returnsExpectedResult() {
        let result = UIColor.govuk.text.buttonPrimary

        XCTAssertEqual(result.lightMode, .white)
    }

    func test_buttonPrimary_dark_returnsExpectedResult() {
        let result = UIColor.govuk.text.buttonPrimary

        XCTAssertEqual(result.darkMode, .black)
    }

    func test_trailingIcon_light_returnsExpectedResult() {
        let result = UIColor.govuk.text.trailingIcon

        XCTAssertEqual(result.lightMode, .grey300)
    }

    func test_trailingIcon_dark_returnsExpectedResult() {
        let result = UIColor.govuk.text.trailingIcon

        XCTAssertEqual(result.darkMode, .grey500)
    }
}
