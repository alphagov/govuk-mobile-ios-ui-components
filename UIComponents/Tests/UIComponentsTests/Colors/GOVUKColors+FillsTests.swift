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

        #expect(result.darkMode == .black.withAlphaComponent(0.75))
    }

    @Test
    func surfaceBackground_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceBackground

        #expect(result.lightMode == .grey50)
    }

    @Test
    func surfaceBackground_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceBackground

        #expect(result.darkMode == .black)
    }

    @Test
    func surfaceCard_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceCard

        #expect(result.lightMode == .white)
    }

    @Test
    func surfaceCard_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceCard

        #expect(result.darkMode == .grey800)
    }

    @Test
    func surfaceButtonPrimary_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceButtonPrimary

        #expect(result.lightMode == .blue1)
        #expect(result.darkMode == .blue2)
    }

    @Test
    func surfaceButtonPrimaryHighlight_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceButtonPrimaryHighlight

        #expect(result.lightMode == .blue5)
        #expect(result.darkMode == .blue6)
    }

    @Test
    func surfaceButtonPrimaryFocussed_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceButtonPrimaryFocussed

        #expect(result == UIColor.yellow1)
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

        #expect(result == UIColor.yellow1)
    }

    @Test
    func surfaceButtonCompact_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceButtonCompact

        #expect(result.lightMode == .white)
        #expect(result.darkMode == .grey800)
    }

    @Test
    func surfaceButtonCompactHighlight_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceButtonCompactHighlight

        #expect(result.lightMode == .blue7)
        #expect(result.darkMode == .blue8)
    }

    @Test
    func surfaceButtonCompactFocussed_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceButtonCompactFocussed

        #expect(result == UIColor.yellow1)
    }

    @Test
    func surfaceButtonCompactDisabled_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceButtonCompactDisabled

        #expect(result.lightMode == .grey100)
        #expect(result.darkMode == .grey400)
    }

    @Test
    func surfaceModal_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceModal

        #expect(result.lightMode == .white)
    }

    @Test
    func surfaceModal_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceModal

        #expect(result.darkMode == .grey850)
    }

    @Test
    func surfaceSearchbox_light_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceSearchBox

        #expect(result.lightMode == .grey550.withAlphaComponent(0.12))
    }

    @Test
    func surfaceSearchbox_dark_returnsExpectedResult() {
        let result = UIColor.govUK.fills.surfaceSearchBox

        #expect(result.darkMode == .grey550.withAlphaComponent(0.24))
    }
}
