import XCTest

final class FontExtensionsTests: XCTestCase {
    // MARK: LARGE TITLE
    func test_largeTitle_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.largeTitle
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 34)
        assertFontWeight(font: font, weight: .regular)
    }

    func test_largeTitleBold_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.largeTitleBold
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 34)
        assertFontWeight(font: font, weight: .bold)
    }

    // MARK: TITLE 1
    func test_title1_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.title1
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 28)
        assertFontWeight(font: font, weight: .regular)
    }

    func test_title1Bold_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.title1Bold
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 28)
        assertFontWeight(font: font, weight: .bold)
    }

    // MARK: TITLE 2
    func test_title2_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.title2
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 22)
        assertFontWeight(font: font, weight: .regular)
    }

    func test_title2Bold_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.title2Bold
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 22)
        assertFontWeight(font: font, weight: .bold)
    }

    // MARK: TITLE 3
    func test_title3_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.title3
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 20)
        assertFontWeight(font: font, weight: .regular)
    }

    func test_title3Semibold_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.title3Semibold
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 20)
        assertFontWeight(font: font, weight: .semibold)
    }

    // MARK: HEADLINE
    func test_headlineSemibold_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.headlineSemibold
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 17)
        assertFontWeight(font: font, weight: .semibold)
    }

    // MARK: BODY
    func test_bodySemibold_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.bodySemibold
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 17)
        assertFontWeight(font: font, weight: .semibold)
    }

    func test_body_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.body
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 17)
        assertFontWeight(font: font, weight: .regular)
    }

    func test_bodyItalic_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.bodyItalic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 17)
    }

    // MARK: CALLOUT
    func test_calloutSemibold_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.calloutSemibold
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 16)
        assertFontWeight(font: font, weight: .semibold)
    }

    func test_callout_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.callout
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 16)
        assertFontWeight(font: font, weight: .regular)
    }

    func test_calloutItalic_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.calloutItalic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 16)
    }

    // MARK: SUBHEADLINE
    func test_subheadlineSemibold_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.subheadlineSemibold
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 15)
        assertFontWeight(font: font, weight: .semibold)
    }

    func test_subheadline_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.subheadline
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 15)
        assertFontWeight(font: font, weight: .regular)
    }

    func test_subheadlineItalic_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.subheadlineItalic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 15)
    }

    // MARK: FOOTNOTE
    func test_footnote_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.footnote
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 13)
        assertFontWeight(font: font, weight: .regular)
    }

    func test_footnoteItalic_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.footnoteItalic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 13)
    }

    func test_footnoteSemibold_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.footnoteSemibold
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 13)
        assertFontWeight(font: font, weight: .semibold)
    }

    // MARK: CAPTION 1
    func test_caption1Medium_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.caption1Medium
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 12)
        assertFontWeight(font: font, weight: .medium)
    }

    func test_caption1_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.caption1
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 12)
        assertFontWeight(font: font, weight: .regular)
    }

    func test_caption1Italic_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.caption1Italic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 12)
    }

    // MARK: CAPTION 2
    func test_caption2Semibold_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.caption2Semibold
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 11)
        assertFontWeight(font: font, weight: .semibold)
    }

    func test_caption2_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.caption2
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 11)
        assertFontWeight(font: font, weight: .regular)
    }

    func test_caption2Italic_hasCorrectSizeAndFont() {
        let font = UIFont.govUK.caption2Italic
        XCTAssertEqual(font.familyName, ".AppleSystemUIFont")
        assertFontSize(font: font, size: 11)
    }

    func assertFontSize(font: UIFont, 
                        size: CGFloat,
                        file: StaticString = #filePath,
                        line: UInt = #line ) {
        let contentSize = UIScreen.main.traitCollection.preferredContentSizeCategory

        if contentSize == .large {
            XCTAssertEqual(font.pointSize, size, file: file, line: line)
        } else {
            print("\(UIScreen.main.traitCollection.preferredContentSizeCategory.rawValue) is wrong dynamic type scale for font unit tests. Should use the default (large)")
        }
    }

    // this test method does not work for italic fonts because applying
    // italic trait removes font weight from the font
    func assertFontWeight(font: UIFont,
                          weight: UIFont.Weight,
                          file: StaticString = #filePath,
                          line: UInt = #line ) {
        let attributes = font.fontDescriptor.fontAttributes
        let traits = font.fontDescriptor.fontAttributes[.traits] as? [UIFontDescriptor.TraitKey: Any]
        let fontWeight = traits?[.weight] as? UIFont.Weight
        XCTAssertEqual(fontWeight, weight, file: file, line: line)
    }
}

