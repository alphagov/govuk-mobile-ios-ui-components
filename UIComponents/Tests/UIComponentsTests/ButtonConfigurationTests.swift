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

    func test_changeConfig() {
        let config = ButtonConfiguration.secondary

        let button = GOVUKButton(.primary)
        XCTAssertEqual(button.buttonConfiguration.titleColorNormal,
                       UIColor.systemBackground)
        XCTAssertEqual(button.titleColor(for: .normal),
                       UIColor.systemBackground)

        button.buttonConfiguration = config

        XCTAssertEqual(button.buttonConfiguration.titleColorNormal, 
                       UIColor(resource: UIComponents.ColorResource.accent))
        XCTAssertEqual(button.titleColor(for: .normal),
                       UIColor(resource: UIComponents.ColorResource.accent))

    }
}
