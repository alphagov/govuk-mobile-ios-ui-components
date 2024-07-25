import XCTest


final class FontExtensionTests: XCTestCase {
    // MARK: LARGE TITLE
    func test_largeTitle() {
        let font = UIFont.govUK.largeTitle
        XCTAssertEqual(font.pointSize, 33)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    func test_largeTitleBold() {
        let font = UIFont.govUK.largeTitleBold
        XCTAssertEqual(font.pointSize, 33)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    // MARK: TITLE 1
    func test_title1() {
        let font = UIFont.govUK.title1
        XCTAssertEqual(font.pointSize, 27)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    func test_title1Bold() {
        let font = UIFont.govUK.title1
        XCTAssertEqual(font.pointSize, 27)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    // MARK: TITLE 2
    func test_title2() {
        let font = UIFont.govUK.title2
        XCTAssertEqual(font.pointSize, 21)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    func test_title2Bold() {
        let font = UIFont.govUK.title2
        XCTAssertEqual(font.pointSize, 21)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    // MARK: TITLE 3
    func test_title3() {
        let font = UIFont.govUK.title3
        XCTAssertEqual(font.pointSize, 19)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    func test_title3Semibold() {
        let font = UIFont.govUK.title3
        XCTAssertEqual(font.pointSize, 19)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    // MARK: HEADLINE
    func test_headlineSemibold() {
        let font = UIFont.govUK.title2
        XCTAssertEqual(font.pointSize, 21)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    func test_headlineSemiboldItalic() {
        let font = UIFont.govUK.title2
        XCTAssertEqual(font.pointSize, 21)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    // MARK: BODY
    func test_bodySemibold() {
        let font = UIFont.govUK.bodySemibold
        XCTAssertEqual(font.pointSize, 16)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    func test_body() {
        let font = UIFont.govUK.body
        XCTAssertEqual(font.pointSize, 16)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    func test_bodyItalic() {
        let font = UIFont.govUK.bodyItalic
        XCTAssertEqual(font.pointSize, 16)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    func test_bodyBoldItalic() {
        let font = UIFont.govUK.bodyBoldItalic
        XCTAssertEqual(font.pointSize, 16)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    // MARK: CALLOUT
    func test_calloutSemibold() {
        let font = UIFont.govUK.calloutSemibold
        XCTAssertEqual(font.pointSize, 15)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    func test_callout() {
        let font = UIFont.govUK.callout
        XCTAssertEqual(font.pointSize, 15)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    func test_calloutItalic() {
        let font = UIFont.govUK.calloutItalic
        XCTAssertEqual(font.pointSize, 15)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    func test_calloutSemiboldItalic() {
        let font = UIFont.govUK.calloutSemiboldItalic
        XCTAssertEqual(font.pointSize, 15)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    // MARK: SUBHEADLINE
    func test_subheadlineSemibold() {
        let font = UIFont.govUK.subheadlineSemibold
        XCTAssertEqual(font.pointSize, 14)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    func test_subheadline() {
        let font = UIFont.govUK.subheadline
        XCTAssertEqual(font.pointSize, 14)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    func test_subheadlineItalic() {
        let font = UIFont.govUK.subheadlineItalic
        XCTAssertEqual(font.pointSize, 14)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    func test_subheadlineSemiboldItalic() {
        let font = UIFont.govUK.subheadlineSemiboldItalic
        XCTAssertEqual(font.pointSize, 14)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    // MARK: CAPTION 1
    func test_caption1Medium() {
        let font = UIFont.govUK.caption1Medium
        XCTAssertEqual(font.pointSize, 11)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    func test_caption1() {
        let font = UIFont.govUK.caption1
        XCTAssertEqual(font.pointSize, 11)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    func test_caption1Italic() {
        let font = UIFont.govUK.caption1Italic
        XCTAssertEqual(font.pointSize, 11)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    func test_caption1MediumItalic() {
        let font = UIFont.govUK.caption1MediumItalic
        XCTAssertEqual(font.pointSize, 11)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    // MARK: CAPTION 2
    func test_caption2Semibold() {
        let font = UIFont.govUK.caption2Semibold
        XCTAssertEqual(font.pointSize, 11)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    func test_caption2() {
        let font = UIFont.govUK.caption2
        XCTAssertEqual(font.pointSize, 11)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    func test_caption2Italic() {
        let font = UIFont.govUK.caption2Italic
        XCTAssertEqual(font.pointSize, 11)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }

    func test_caption2SemiboldItalic() {
        let font = UIFont.govUK.caption2SemiboldItalic
        XCTAssertEqual(font.pointSize, 11)
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
    }
}
