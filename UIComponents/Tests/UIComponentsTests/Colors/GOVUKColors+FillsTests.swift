import XCTest

@testable import UIComponents

final class GOVUKColors_FillsTests: XCTestCase {
    func test_surfaceFixedContainer_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceFixedContainer

        XCTAssertEqual(result.lightMode, .white.withAlphaComponent(0.75))
    }

    func test_surfaceFixedContainer_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceFixedContainer

        XCTAssertEqual(result.darkMode, .black.withAlphaComponent(0.75))
    }

    func test_surfaceBackground_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceBackground

        XCTAssertEqual(result.lightMode, .grey50)
    }

    func test_surfaceBackground_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceBackground

        XCTAssertEqual(result.darkMode, .black)
    }

    func test_surfaceCard_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceCard

        XCTAssertEqual(result.lightMode, .white)
    }

    func test_surfaceCard_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceCard

        XCTAssertEqual(result.darkMode, .grey800)
    }

    func test_surfaceButtonPrimary_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceButtonPrimary

        XCTAssertEqual(result.lightMode, .blue1)
    }

    func test_surfaceButtonPrimary_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceButtonPrimary

        XCTAssertEqual(result.darkMode, .blue2)
    }

    func test_surfaceModal_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceModal

        XCTAssertEqual(result.lightMode, .white)
    }

    func test_surfaceModal_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceModal

        XCTAssertEqual(result.darkMode, .grey850)
    }

    func test_surfaceSearchbox_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceSearchBox

        XCTAssertEqual(result.lightMode, .grey550.withAlphaComponent(0.12))
    }

    func test_surfaceSearchbox_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceSearchBox

        XCTAssertEqual(result.darkMode, .grey550.withAlphaComponent(0.24))
    }
}
