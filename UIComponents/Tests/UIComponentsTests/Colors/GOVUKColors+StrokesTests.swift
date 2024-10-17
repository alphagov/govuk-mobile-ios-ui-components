import XCTest

@testable import UIComponents

final class GOVUKColors_StrokesTests: XCTestCase {
    func test_listDivider_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.listDivider

        XCTAssertEqual(result.lightMode, .grey300)
        XCTAssertEqual(result.darkMode, .grey500)
    }

    func test_pageControlInactive_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.pageControlInactive

        XCTAssertEqual(result.lightMode, .grey500)
        XCTAssertEqual(result.darkMode, .grey300)
    }
}
