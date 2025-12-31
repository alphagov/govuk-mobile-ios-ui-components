import Foundation
import UIKit
import Testing

@testable import UIComponents

@Suite
@MainActor
struct GOVUKColors_FillsTests {
    @Test
    func surfaceFixedContainer_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceFixedContainer

        #expect(result.lightMode == .white.withAlphaComponent(0.75))
    }

    @Test
    func surfaceFixedContainer_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceFixedContainer

        #expect(result.darkMode == .blueDarker80.withAlphaComponent(0.75))
    }

    @Test
    func surfaceBackground_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceBackground

        #expect(result.lightMode == .blueLighter90)
    }

    @Test
    func surfaceBackground_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceBackground

        #expect(result.darkMode == .blueDarker80)
    }

    @Test
    func surfaceFullscreen_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceFullscreen

        #expect(result.lightMode == .white)
    }

    @Test
    func surfaceFullscreen_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceFullscreen

        #expect(result.darkMode == .blueDarker80)
    }

    @Test
    func surfaceCard_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceCardDefault

        #expect(result.lightMode == .white)
    }

    @Test
    func surfaceCard_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceCardDefault

        #expect(result.darkMode == .blueDarker65)
    }

    @Test
    func surfaceCard_nonTappable_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceCardNonTappable

        #expect(result.lightMode == .blueLighter80)
    }

    @Test
    func surfaceCard_nonTappable_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceCardNonTappable

        #expect(result.darkMode == .blueDarker75)
    }

    @Test
    func surfaceCardBlue_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceCardDefault

        #expect(result.lightMode == .white)
    }

    @Test
    func surfaceCardBlue_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceCardDefault

        #expect(result.darkMode == .blueDarker65)
    }

    @Test
    func surfaceCardSelected_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceCardSelected

        #expect(result.lightMode == .greenLighter95)
    }

    @Test
    func surfaceCardSelected_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceCardSelected

        #expect(result.darkMode == .greenDarker50)
    }

    @Test
    func surfaceButtonPrimary_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceButtonPrimary

        #expect(result.lightMode == .primaryGreen)
        #expect(result.darkMode == .accentGreen)
    }

    @Test
    func surfaceButtonPrimaryHighlight_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceButtonPrimaryHighlight

        #expect(result.lightMode == .greenDarker25)
        #expect(result.darkMode == .greenLighter25)
    }

    @Test
    func surfaceButtonPrimaryFocussed_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceButtonPrimaryFocussed

        #expect(result == UIColor.primaryYellow)
    }

    @Test
    func surfaceButtonPrimaryDisabled_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceButtonPrimaryDisabled

        #expect(result.lightMode == .grey100)
        #expect(result.darkMode == .grey400)
    }

    @Test
    func surfaceButtonSecondary_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceButtonSecondary

        #expect(result == .clear)
    }

    @Test
    func surfaceButtonSecondaryHighlight_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceButtonSecondaryHighlight

        #expect(result == .clear)
    }

    @Test
    func surfaceButtonSecondaryFocussed_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceButtonSecondaryFocussed

        #expect(result == UIColor.primaryYellow)
    }

    @Test
    func surfaceButtonCompact_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceButtonCompact

        #expect(result.lightMode == .blueLighter95)
        #expect(result.darkMode == .blueDarker80)
    }

    @Test
    func surfaceButtonCompactHighlight_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceButtonCompactHighlight

        #expect(result.lightMode == .blueLighter95)
        #expect(result.darkMode == .blueDarker80)
    }

    @Test
    func surfaceButtonCompactFocussed_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceButtonCompactFocussed

        #expect(result == UIColor.primaryYellow)
    }

    @Test
    func surfaceButtonCompactDisabled_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceButtonCompactDisabled

        #expect(result.lightMode == .grey100)
        #expect(result.darkMode == .grey400)
    }

    @Test
    func surfaceButtonDestructive_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceButtonDestructive

        #expect(result.lightMode == .primaryRed)
        #expect(result.darkMode == .accentRed)
    }

    @Test
    func surfaceButtonDestructiveHighlight_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceButtonDestructiveHighlight

        #expect(result.lightMode == .redDarker25)
        #expect(result.darkMode == .primaryRed)
    }

    @Test
    func surfaceModal_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceModal

        #expect(result.lightMode == .white)
    }

    @Test
    func surfaceModal_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceModal

        #expect(result.darkMode == .blueDarker80)
    }

    @Test
    func surfaceSearch_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceSearch

        #expect(result.lightMode == .white)
    }

    @Test
    func surfaceSearch_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceSearch

        #expect(result.darkMode == .blueDarkMode)
    }

    @Test
    func surfaceHomeHeaderBackground_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceHomeHeaderBackground

        #expect(result.lightMode == .primaryBlue)
    }

    @Test
    func surfaceHomeHeaderBackground_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceHomeHeaderBackground

        #expect(result.darkMode == .blueDarker65)
    }

    @Test
    func surfaceToggleSelected_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceToggleSelected

        #expect(result.lightMode == .primaryGreen)
    }

    @Test
    func surfaceToggleSelected_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceToggleSelected

        #expect(result.darkMode == .primaryGreen)
    }

    @Test
    func surfaceList_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceList

        #expect(result.lightMode == .white)
    }

    @Test
    func surfaceList_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceList

        #expect(result.darkMode == .blueDarker70)
    }

    @Test
    func surfaceListHeading_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceListHeading

        #expect(result.lightMode == .blueLighter95)
    }

    @Test
    func surfaceListHeading_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceListHeading

        #expect(result.darkMode == .blueDarker50)
    }

    @Test
    func surfaceListSelected_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceListSelected

        #expect(result.lightMode == .primaryBlue)
    }

    @Test
    func surfaceListSelected_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceListSelected

        #expect(result.darkMode == .blueDarker25)
    }

    @Test
    func surfaceListUnselected_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceListUnselected

        #expect(result.lightMode == .blueLighter90)
    }

    @Test
    func surfaceListUnselected_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceListUnselected

        #expect(result.darkMode == .blueDarker75)
    }

    @Test
    func surfaceChatBlue_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceChatBlue

        #expect(result.lightMode == .white)
    }

    @Test
    func surfaceChatBlue_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceChatBlue

        #expect(result.darkMode == .blueDarker80)
    }

    @Test
    func surfaceChatAction_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceChatAction

        #expect(result.lightMode == .white)
    }

    @Test
    func surfaceChatAction_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceChatAction

        #expect(result.darkMode == .blueDarker50)
    }

    @Test
    func surfaceChatQuestion_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceChatQuestion

        #expect(result.lightMode == .white.withAlphaComponent(0.5))
    }

    @Test
    func surfaceChatQuestion_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceChatQuestion

        #expect(result.darkMode == .blueDarker80.withAlphaComponent(0.5))
    }

    @Test
    func surfaceChatBackground_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceChatBackground

        #expect(result.lightMode == .blueLighter90)
    }

    @Test
    func surfaceChatBackground_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceChatBackground

        #expect(result.darkMode == .blueDarker80)
    }

    @Test
    func surfaceChatOnboardingListBackground_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceChatOnboardingListBackground

        #expect(result.lightMode == .blueLighter90)
    }

    @Test
    func surfaceChatOnboardingListBackground_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceChatOnboardingListBackground

        #expect(result.darkMode == .blueDarker70)
    }

    @Test
    func surfaceCardEmergencyNotableDeath_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceCardEmergencyNotableDeath

        #expect(result.lightMode == .black)
    }

    @Test
    func surfaceCardEmergencyNotableDeath_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceCardEmergencyNotableDeath

        #expect(result.darkMode == .black)
    }

    @Test
    func surfaceCardEmergencyNational_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceCardEmergencyNational

        #expect(result.lightMode == .primaryRed)
    }

    @Test
    func surfaceCardEmergencyNational_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceCardEmergencyNational

        #expect(result.darkMode == .primaryRed)
    }

    @Test
    func surfaceCardEmergencyLocal_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceCardEmergencyLocal

        #expect(result.lightMode == .primaryTeal)
    }

    @Test
    func surfaceCardEmergencyLocal_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceCardEmergencyLocal

        #expect(result.darkMode == .primaryTeal)
    }

    @Test
    func surfaceCardEmergencyInfo_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceCardEmergencyInfo

        #expect(result.lightMode == .white)
    }

    @Test
    func surfaceCardEmergencyInfo_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceCardEmergencyInfo

        #expect(result.darkMode == .blueDarkMode)
    }
}
