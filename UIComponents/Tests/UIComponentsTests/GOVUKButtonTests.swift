@testable import UIComponents
import XCTest

final class GOVUKButtonTests: XCTestCase {
    var sut: GOVUKButton!
    var didTap: Bool!
    var viewModel: GOVUKButton.ButtonViewModel!
    let buttonShapesEnabled = UIAccessibility.buttonShapesEnabled

    override func setUp() {
        super.setUp()

        sut = GOVUKButton(.secondary)
        didTap = false

        viewModel = GOVUKButton.ButtonViewModel(localisedTitle: "configured button"){
            print("configured button was tapped")
            self.didTap = true
        }
    }

    override func tearDown() {
        sut = nil
        didTap = nil

        viewModel = nil

        super.tearDown()
    }
}

extension GOVUKButtonTests {
    func test_secondaryButton_noTitle() {
        XCTAssertNotNil(sut)
        XCTAssertEqual(sut.backgroundColor, UIColor.clear)
        XCTAssertNil(sut.titleLabel?.text)
    }

    func test_secondaryButton_hasTitle() {
        XCTAssertNotNil(sut)
        sut.titleLabel?.text = "test button"
        XCTAssertEqual(sut.titleLabel?.text, "test button")
        XCTAssertEqual(sut.titleLabel?.textColor,
                       UIColor(resource: UIComponents.ColorResource.accent))
    }

    func test_buttonBackground() {
        XCTAssertEqual(sut.backgroundColor, UIColor.clear)
        sut.backgroundColor = .cyan
        XCTAssertNotNil(sut.backgroundColor)
        sut.backgroundColor = .clear
        XCTAssertNotNil(sut.backgroundColor)
    }

    func test_GOVUKButton_removeActions() {
        XCTAssertTrue(sut.allControlEvents.isEmpty)

        let viewModel = GOVUKButton.ButtonViewModel(
            localisedTitle: "button title", action: {
                    // empty action
            }
        )

        sut = GOVUKButton(.secondary)
        sut.viewModel = viewModel

        XCTAssertTrue(!sut.allControlEvents.isEmpty)
        sut.removeAllActions()
        XCTAssertTrue(sut.allControlEvents.isEmpty)
    }
}
