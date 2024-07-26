import XCTest

final class FontExtensionTests: XCTestCase {
    // MARK: LARGE TITLE
    func test_largeTitle() {
        let font = UIFont.govUK.largeTitle
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 34)
    }

    func test_largeTitleBold() {
        let font = UIFont.govUK.largeTitleBold
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 34)
    }

    // MARK: TITLE 1
    func test_title1() {
        let font = UIFont.govUK.title1
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 28)
    }

    func test_title1Bold() {
        let font = UIFont.govUK.title1
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 28)
    }

    // MARK: TITLE 2
    func test_title2() {
        let font = UIFont.govUK.title2
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 22)
    }

    func test_title2Bold() {
        let font = UIFont.govUK.title2
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 22)
    }

    // MARK: TITLE 3
    func test_title3() {
        let font = UIFont.govUK.title3
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 20)
    }

    func test_title3Semibold() {
        let font = UIFont.govUK.title3
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 20)
    }

    // MARK: HEADLINE
    func test_headlineSemibold() {
        let font = UIFont.govUK.title2
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 22)
    }

    func test_headlineSemiboldItalic() {
        let font = UIFont.govUK.title2
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 22)
    }

    // MARK: BODY
    func test_bodySemibold() {
        let font = UIFont.govUK.bodySemibold
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 17)
    }

    func test_body() {
        let font = UIFont.govUK.body
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 17)
    }

    func test_bodyItalic() {
        let font = UIFont.govUK.bodyItalic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 17)
    }

    func test_bodyBoldItalic() {
        let font = UIFont.govUK.bodyBoldItalic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 17)
    }

    // MARK: CALLOUT
    func test_calloutSemibold() {
        let font = UIFont.govUK.calloutSemibold
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 16)
    }

    func test_callout() {
        let font = UIFont.govUK.callout
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 16)
    }

    func test_calloutItalic() {
        let font = UIFont.govUK.calloutItalic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 16)
    }

    func test_calloutSemiboldItalic() {
        let font = UIFont.govUK.calloutSemiboldItalic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 16)
    }

    // MARK: SUBHEADLINE
    func test_subheadlineSemibold() {
        let font = UIFont.govUK.subheadlineSemibold
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 15)
    }

    func test_subheadline() {
        let font = UIFont.govUK.subheadline
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 15)
    }

    func test_subheadlineItalic() {
        let font = UIFont.govUK.subheadlineItalic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 15)
    }

    func test_subheadlineSemiboldItalic() {
        let font = UIFont.govUK.subheadlineSemiboldItalic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 15)
    }

    // MARK: CAPTION 1
    func test_caption1Medium() {
        let font = UIFont.govUK.caption1Medium
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 12)
    }

    func test_caption1() {
        let font = UIFont.govUK.caption1
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 12)
    }

    func test_caption1Italic() {
        let font = UIFont.govUK.caption1Italic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 12)
    }

    func test_caption1MediumItalic() {
        let font = UIFont.govUK.caption1MediumItalic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 12)
    }

    // MARK: CAPTION 2
    func test_caption2Semibold() {
        let font = UIFont.govUK.caption2Semibold
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 11)
    }

    func test_caption2() {
        let font = UIFont.govUK.caption2
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 11)
    }

    func test_caption2Italic() {
        let font = UIFont.govUK.caption2Italic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 11)
    }

    func test_caption2SemiboldItalic() {
        let font = UIFont.govUK.caption2SemiboldItalic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 11)
    }

    func assertFontSize(font: UIFont, size: CGFloat) {
        let contentSize = UIScreen.main.traitCollection.preferredContentSizeCategory

        if contentSize == .large {
            XCTAssertEqual(font.pointSize, size)
        } else {
            print("\(UIScreen.main.traitCollection.preferredContentSizeCategory.rawValue) is wrong dynamic type scale for font unit tests. Should use the default (large)")
        }
    }
}

