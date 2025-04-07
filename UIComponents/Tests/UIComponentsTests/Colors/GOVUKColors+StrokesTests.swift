import Foundation
import UIKit
import Testing

@testable import UIComponents

@Suite
@MainActor
struct GOVUKColors_StrokesTests {
    @Test
    func listDivider_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.listDivider

        #expect(result.lightMode == .blueLighter50)
        #expect(result.darkMode == .blueDarker25)
    }

    @Test
    func pageControlInactive_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.pageControlInactive

        #expect(result.lightMode == .grey500)
        #expect(result.darkMode == .grey300)
    }

    @Test
    func cardBlue_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.cardBlue

        #expect(result.lightMode == .blueLighter50)
        #expect(result.darkMode == .primaryBlue)
    }

    @Test
    func cardGreen_light_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.cardGreen

        #expect(result.lightMode == .greenLighter50)
    }

    @Test
    func cardGreen_dark_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.cardGreen

        #expect(result.darkMode == .greenDarker50)
    }

    @Test
    func cardSelected_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.cardSelected

        #expect(result.lightMode == .primaryGreen)
        #expect(result.darkMode == .accentGreen)
    }

    @Test
    func buttonCompactHighlight_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.buttonCompactHighlight

        #expect(result.lightMode == .blueLighter25)
        #expect(result.darkMode == .blueDarker25)
    }
}
