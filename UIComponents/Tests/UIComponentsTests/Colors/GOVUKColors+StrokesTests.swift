import XCTest

@testable import UIComponents

final class GOVUKColors_StrokesTests: XCTestCase {
    func test_listDivider_light_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.listDivider

        XCTAssertEqual(result.lightMode, .grey300)
    }

    func test_listDivider_dark_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.listDivider

        XCTAssertEqual(result.darkMode, .grey500)
    }

    func test_pageControlInactive_light_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.pageControlInactive

        XCTAssertEqual(result.lightMode, .grey500)
    }

    func test_pageControlInactive_dark_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.pageControlInactive

        XCTAssertEqual(result.darkMode, .grey300)
    }
}
