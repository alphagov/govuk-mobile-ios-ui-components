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

        #expect(result.lightMode == .blueLighter80)
        #expect(result.darkMode == .blueDarkMode)
    }

    @Test
    func buttonPrimaryFocused_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.buttonPrimaryFocused

        #expect(result.lightMode == .black)
        #expect(result.darkMode == .yellowDarker50)
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

        #expect(result.darkMode == .greenLighter25)
    }

    @Test
    func cardDefault_light_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.cardDefault

        #expect(result.lightMode == .blueLighter80)
    }

    @Test
    func cardDefault_dark_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.cardDefault

        #expect(result.darkMode == .blueDarkMode)
    }

    @Test
    func error_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.error
        
        #expect(result.lightMode == .primaryRed)
        #expect(result.darkMode == .accentRed)
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

    @Test
    func buttonPrimaryDefault_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.buttonPrimaryDefault

        #expect(result.lightMode == .greenDarker50)
        #expect(result.darkMode == .primaryGreen)
    }

    @Test
    func buttonPrimaryHighlight_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.buttonPrimaryHighlight

        #expect(result.lightMode == .greenDarker80)
        #expect(result.darkMode == .greenDarker50)
    }

    @Test
    func buttonFocused_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.buttonFocused

        #expect(result.lightMode == .black)
        #expect(result.darkMode == .yellowDarker50)
    }

    @Test
    func buttonDestructiveDefault_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.buttonDestructiveDefault

        #expect(result.lightMode == .redDarker50)
        #expect(result.darkMode == .primaryRed)
    }

    @Test
    func buttonDestructiveHighlight_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.buttonDestructiveHighlight

        #expect(result.lightMode == .redDarker80)
        #expect(result.darkMode == .redDarker50)
    }

    @Test
    func fixedContainer_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.fixedContainer

        #expect(result.lightMode == .black.withAlphaComponent(0.3))
        #expect(result.darkMode == .white.withAlphaComponent(0.3))
    }

    @Test
    func focusedChatTextBox_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.focusedChatTextBox

        #expect(result.lightMode == .primaryBlue)
        #expect(result.darkMode == .accentBlue)
    }

    // MARK: Chat
    @Test
    func chatDivider_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.chatDivider

        #expect(result.lightMode == .blueLighter80)
        #expect(result.darkMode == .blueDarker25)
    }

    @Test
    func chatAnswer_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.chatAnswer

        #expect(result.lightMode == .clear)
        #expect(result.darkMode == .blueDarker25)
    }

    @Test
    func chatAction_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.chatAction

        #expect(result.lightMode == .grey300)
        #expect(result.darkMode == .blueLighter25)
    }

    @Test
    func chatOnboardingListDivider_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.chatOnboardingListDivider

        #expect(result.lightMode == .blueLighter80)
        #expect(result.darkMode == .blueDarker50)
    }

    @Test
    func surfaceCardEmergencyNotableDeath_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.surfaceCardEmergencyNotableDeath

        #expect(result.lightMode == .clear)
        #expect(result.darkMode == .white)
    }

    @Test
    func surfaceCardEmergencyInfo_returnsExpectedResult() {
        let result = UIColor.govUK.strokes.surfaceCardEmergencyInfo

        #expect(result.lightMode == .blueLighter25)
        #expect(result.darkMode == .blueLighter25)
    }
}
