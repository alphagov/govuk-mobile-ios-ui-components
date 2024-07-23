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
}
