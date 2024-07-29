import XCTest

final class UIFontExtensionsTests: XCTestCase {
    // MARK: LARGE TITLE
    func test_largeTitle_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.largeTitle
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 34)
    }

    func test_largeTitleBold_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.largeTitleBold
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 34)
    }

    // MARK: TITLE 1
    func test_title1_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.title1
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 28)
    }

    func test_title1Bold_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.title1Bold
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 28)
    }

    // MARK: TITLE 2
    func test_title2_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.title2
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 22)
    }

    func test_title2Bold_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.title2Bold
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 22)
    }

    // MARK: TITLE 3
    func test_title3_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.title3
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 20)
    }

    func test_title3Semibold_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.title3Semibold
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 20)
    }

    // MARK: HEADLINE
    func test_headlineSemibold_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.headlineSemibold
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 17)
    }

    func test_headlineSemiboldItalic_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.headlineSemiboldItalic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 17)
    }

    // MARK: BODY
    func test_bodySemibold_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.bodySemibold
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 17)
    }

    func test_body_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.body
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 17)
    }

    func test_bodyItalic_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.bodyItalic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 17)
    }

    func test_bodyBoldItalic_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.bodyBoldItalic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 17)
    }

    // MARK: CALLOUT
    func test_calloutSemibold_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.calloutSemibold
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 16)
    }

    func test_callout_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.callout
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 16)
    }

    func test_calloutItalic_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.calloutItalic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 16)
    }

    func test_calloutSemiboldItalic_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.calloutSemiboldItalic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 16)
    }

    // MARK: SUBHEADLINE
    func test_subheadlineSemibold_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.subheadlineSemibold
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 15)
    }

    func test_subheadline_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.subheadline
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 15)
    }

    func test_subheadlineItalic_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.subheadlineItalic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 15)
    }

    func test_subheadlineSemiboldItalic_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.subheadlineSemiboldItalic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 15)
    }

    // MARK: CAPTION 1
    func test_caption1Medium_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.caption1Medium
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 12)
    }

    func test_caption1_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.caption1
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 12)
    }

    func test_caption1Italic_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.caption1Italic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 12)
    }

    func test_caption1MediumItalic_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.caption1MediumItalic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 12)
    }

    // MARK: CAPTION 2
    func test_caption2Semibold_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.caption2Semibold
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 11)
    }

    func test_caption2_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.caption2
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 11)
    }

    func test_caption2Italic_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.caption2Italic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 11)
    }

    func test_caption2SemiboldItalic_hasCorrectSizeAndFont() {
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

