@testable import UIComponents
import XCTest

final class ButtonConfigurationTests: XCTestCase {
    typealias ButtonConfiguration = GOVUKButton.ButtonConfiguration
}

extension ButtonConfigurationTests {
    func test_primaryConfiguration() {
        let config = ButtonConfiguration.primary

        XCTAssertEqual(config.titleColorNormal, UIColor.systemBackground)
        XCTAssertEqual(config.titleColorFocused, UIColor.black)
        XCTAssertEqual(config.titleFont, UIFont.bodySemiBold)
        XCTAssertEqual(config.backgroundColorNormal,
                       UIColor(resource: UIComponents.ColorResource.accent))
        XCTAssertEqual(config.backgroundColorHighlighted,
                       UIColor(resource: UIComponents.ColorResource.primaryButtonHighlight))
        XCTAssertEqual(config.backgroundColorFocused,
                       UIColor(resource: UIComponents.ColorResource.buttonFocusYellow))
        XCTAssertEqual(config.cornerRadius, 22)
    }

    func test_secondaryConfiguration() {
        let config = ButtonConfiguration.secondary

        XCTAssertEqual(config.titleColorNormal,
                       UIColor(resource: UIComponents.ColorResource.accent))
        XCTAssertEqual(config.titleColorHighlighted,
                       UIColor(resource: UIComponents.ColorResource.primaryButtonHighlight))
        XCTAssertEqual(config.titleColorFocused, UIColor.black)
        XCTAssertEqual(config.titleFont, UIFont.body)
        XCTAssertEqual(config.backgroundColorNormal, UIColor.clear)
        XCTAssertEqual(config.backgroundColorHighlighted, UIColor.clear)
        XCTAssertEqual(config.backgroundColorFocused,
                       UIColor(resource: UIComponents.ColorResource.buttonFocusYellow))
    }

    func test_secondaryLeadingConfiguration() {
        let config = ButtonConfiguration.secondaryLeading

        XCTAssertEqual(config.titleColorNormal,
                       UIColor(resource: UIComponents.ColorResource.accent))
        XCTAssertEqual(config.titleColorHighlighted,
                       UIColor(resource: UIComponents.ColorResource.primaryButtonHighlight))
        XCTAssertEqual(config.titleColorFocused, UIColor.black)
        XCTAssertEqual(config.titleFont, UIFont.body)
        XCTAssertEqual(config.backgroundColorNormal, UIColor.clear)
        XCTAssertEqual(config.backgroundColorHighlighted, UIColor.clear)
        XCTAssertEqual(config.backgroundColorFocused,
                       UIColor(resource: UIComponents.ColorResource.buttonFocusYellow))

        XCTAssertEqual(config.textAlignment, .left)
        XCTAssertEqual(config.contentHorizontalAlignment, .leading)
        XCTAssertEqual(config.contentEdgeInsets, UIEdgeInsets(top: 4,
                                                              left: 0,
                                                              bottom: 4,
                                                              right: 0))
    }
}
