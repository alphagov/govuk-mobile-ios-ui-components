import XCTest

@testable import UIComponents

final class ButtonConfigurationTests: XCTestCase {
    func test_primary_returnsExpectedConfiguration() {
        let sut = GOVUKButton.ButtonConfiguration.primary

        XCTAssertEqual(sut.titleColorNormal,
                       UIColor.govUK.text.buttonPrimary)
        XCTAssertEqual(sut.titleColorHighlighted, nil)
        XCTAssertEqual(sut.titleColorFocused,
                       UIColor.govUK.text.buttonPrimaryFocussed)
        XCTAssertEqual(sut.titleColorDisabled, UIColor.govUK.text.buttonPrimaryDisabled)
        XCTAssertEqual(sut.titleFont, UIFont.govUK.bodySemibold)
        XCTAssertEqual(sut.backgroundColorNormal,
                       UIColor.govUK.fills.surfaceButtonPrimary)
        XCTAssertEqual(sut.backgroundColorHighlighted,
                       UIColor.govUK.fills.surfaceButtonPrimaryHighlight)
        XCTAssertEqual(sut.backgroundColorFocused,
                       UIColor.govUK.fills.surfaceButtonPrimaryFocussed)
        XCTAssertEqual(sut.backgroundColorDisabled,
                       UIColor.govUK.fills.surfaceButtonPrimaryDisabled)

        XCTAssertEqual(sut.borderColor, .clear)

        XCTAssertEqual(sut.cornerRadius, 22)

        let accessibilityNormal = sut.accessibilityButtonShapesColor(for: .normal)
        XCTAssertEqual(accessibilityNormal, sut.backgroundColorNormal)

        let accessibilityHighlighted = sut.accessibilityButtonShapesColor(for: .highlighted)
        XCTAssertEqual(
            accessibilityHighlighted,
            sut.backgroundColorHighlighted
        )

        let accessibilityFocussed = sut.accessibilityButtonShapesColor(for: .focused)
        XCTAssertEqual(
            accessibilityFocussed,
            sut.backgroundColorFocused
        )
    }

    func test_secondary_returnsExpectedConfiguration() {
        let sut = GOVUKButton.ButtonConfiguration.secondary

        XCTAssertEqual(sut.titleColorNormal,
                       UIColor.govUK.text.buttonSecondary)
        XCTAssertEqual(sut.titleColorHighlighted,
                       UIColor.govUK.text.buttonSecondaryHighlight)
        XCTAssertEqual(sut.titleColorFocused, UIColor.govUK.text.buttonSecondaryFocussed)
        XCTAssertEqual(sut.titleColorDisabled, UIColor.govUK.text.buttonSecondaryDisabled)
        XCTAssertEqual(sut.titleFont, UIFont.govUK.body)
        XCTAssertEqual(sut.backgroundColorNormal, .clear)
        XCTAssertEqual(sut.backgroundColorHighlighted, .clear)
        XCTAssertEqual(sut.backgroundColorFocused,
                       UIColor.govUK.fills.surfaceButtonSecondaryFocussed)
        XCTAssertEqual(sut.backgroundColorDisabled, .clear)

        XCTAssertEqual(sut.borderColor, .clear)

        XCTAssertEqual(sut.cornerRadius, 4)

        let accessibilityNormal = sut.accessibilityButtonShapesColor(for: .normal)
        XCTAssertEqual(accessibilityNormal, sut.accessibilityButtonShapesColor)

        let accessibilityHighlighted = sut.accessibilityButtonShapesColor(for: .highlighted)
        XCTAssertEqual(
            accessibilityHighlighted,
            sut.accessibilityButtonShapesColor.withAlphaComponent(0.7)
        )

        let accessibilityFocussed = sut.accessibilityButtonShapesColor(for: .focused)
        XCTAssertEqual(
            accessibilityFocussed,
            sut.accessibilityButtonShapesColor
        )
    }

    func test_compact_returnsExpectedConfiguration() {
        let sut = GOVUKButton.ButtonConfiguration.compact

        XCTAssertEqual(sut.titleColorNormal,
                       UIColor.govUK.text.buttonCompact)
        XCTAssertEqual(sut.titleColorHighlighted,
                       UIColor.govUK.text.buttonCompactHighlight)
        XCTAssertEqual(sut.titleColorFocused, UIColor.govUK.text.buttonCompactFocussed)
        XCTAssertEqual(sut.titleColorDisabled, UIColor.govUK.text.buttonCompactDisabled)
        XCTAssertEqual(sut.titleFont, UIFont.govUK.body)
        XCTAssertEqual(sut.backgroundColorNormal, UIColor.govUK.fills.surfaceButtonCompact)
        XCTAssertEqual(sut.backgroundColorHighlighted, UIColor.govUK.fills.surfaceButtonCompactHighlight)
        XCTAssertEqual(sut.backgroundColorFocused,
                       UIColor.govUK.fills.surfaceButtonCompactFocussed)
        XCTAssertEqual(sut.backgroundColorDisabled,
                       UIColor.govUK.fills.surfaceButtonCompactDisabled)

        XCTAssertEqual(sut.borderColor,
                       UIColor.govUK.strokes.listDivider)

        XCTAssertEqual(sut.cornerRadius, 22)

        let accessibilityNormal = sut.accessibilityButtonShapesColor(for: .normal)
        XCTAssertEqual(accessibilityNormal, sut.backgroundColorNormal)

        let accessibilityHighlighted = sut.accessibilityButtonShapesColor(for: .highlighted)
        XCTAssertEqual(
            accessibilityHighlighted,
            sut.backgroundColorHighlighted
        )

        let accessibilityFocussed = sut.accessibilityButtonShapesColor(for: .focused)
        XCTAssertEqual(
            accessibilityFocussed,
            sut.backgroundColorFocused
        )
    }

    func test_backgroundColorFor_highlighted_returnsExpectedColor() {
        let sut = GOVUKButton.ButtonConfiguration(
            titleFont: UIFont.govUK.body,
            backgroundColorNormal: .red,
            backgroundColorHighlighted: .blue,
            backgroundColorFocused: .green,
            backgroundColorDisabled: .clear,
            accessibilityButtonShapesColor: .purple
        )
        let result = sut.backgroundColor(for: [.highlighted, .focused])
        XCTAssertEqual(result, .blue)
    }

    func test_backgroundColorFor_focussed_returnsExpectedColor() {
        let sut = GOVUKButton.ButtonConfiguration(
            titleFont: UIFont.govUK.body,
            backgroundColorNormal: .red,
            backgroundColorHighlighted: .blue,
            backgroundColorFocused: .green,
            backgroundColorDisabled: .clear,
            accessibilityButtonShapesColor: .purple
        )
        let result = sut.backgroundColor(for: [.focused])
        XCTAssertEqual(result, .green)
    }
}
