import XCTest

@testable import UIComponents

final class GOVUKButtonTests: XCTestCase {
    var sut: GOVUKButton!
    var configuration: GOVUKButton.ButtonConfiguration!

    override func setUp() {
        super.setUp()
        configuration = GOVUKButton.ButtonConfiguration.secondary
        sut = GOVUKButton(configuration)
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }
}

extension GOVUKButtonTests {
    func test_init_withConfig_noTitle_returnsExpectedResult() {
        XCTAssertNotNil(sut)
        XCTAssertEqual(sut.backgroundColor, 
                       configuration.backgroundColorNormal)
        XCTAssertEqual(sut.titleLabel?.textColor,
                       configuration.titleColorNormal)
        XCTAssertNil(sut.titleLabel?.text)
    }

    func test_setTitleText_setsTitle() {
        XCTAssertNotNil(sut)
        sut.setTitle("test button", for: .normal)
        XCTAssertEqual(sut.titleLabel?.text, "test button")
    }

    func test_setBackgroundColor_setsColor() {
        sut.backgroundColor = nil
        XCTAssertNil(sut.backgroundColor)

        sut.backgroundColor = .cyan
        XCTAssertEqual(sut.backgroundColor, .cyan)

        sut.backgroundColor = .clear
        XCTAssertNotNil(sut.backgroundColor)
    }

    func test_setViewModel_changesViewModel() {
        let expectedViewModel = GOVUKButton.ButtonViewModel(
            localisedTitle: "new title",
            action: {
                // empty action
            }
        )

        sut.viewModel = expectedViewModel

        XCTAssertEqual(sut.viewModel?.localisedTitle, expectedViewModel.localisedTitle)
        XCTAssertEqual(sut.title(for: .normal), expectedViewModel.localisedTitle)
    }

    func test_setButtonConfiguration_changesConfig() {
        let expectedConfig = GOVUKButton.ButtonConfiguration.primary
        sut.buttonConfiguration = expectedConfig

        XCTAssertEqual(sut.buttonConfiguration.titleColorNormal,
                       expectedConfig.titleColorNormal)
        XCTAssertEqual(sut.titleColor(for: .normal),
                       expectedConfig.titleColorNormal)
    }
}
