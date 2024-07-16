@testable import UIComponents
import XCTest

struct MockViewModel: ButtonViewModel {
    var localisedTitle: String = "configured button"

    var action: () async throws -> Void

    var buttonConfiguration: GOVUKButton.ButtonConfiguration? = .init(
        titleColorNormal: .purple,
        titleColorFocused: .green,
        titleFont: .title3,
        backgroundColorNormal: .green,
        backgroundColorFocused: .cyan,
        buttonShape: .roundedRect(5))

    init(action: @escaping () -> Void) {
        self.action = action
    }
}

final class GOVUKButtonTests: XCTestCase {
    var sut: GOVUKButton!
    var didTap: Bool!
    var viewModel: ButtonViewModel!
    let buttonShapesEnabled = UIAccessibility.buttonShapesEnabled

    override func setUp() {
        super.setUp()

        sut = GOVUKButton()
        didTap = false

        viewModel = MockViewModel {
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
    func test_unconfiguredButton() {
        XCTAssertNotNil(sut)

        if !buttonShapesEnabled {
            XCTAssertNil(sut.backgroundColor)
            XCTAssertFalse(sut.backgroundManager.hasBackground)
        } else {
            XCTAssertNotNil(sut.backgroundColor)
            XCTAssertTrue(sut.backgroundManager.hasBackground)
        }

        XCTAssertNil(sut.titleLabel?.text)
    }

    func test_basicButton() {
        XCTAssertNotNil(sut)

        sut.titleLabel?.text = "test button"

        XCTAssertEqual(sut.titleLabel?.text, "test button")
        XCTAssertEqual(sut.titleLabel?.textColor, UIColor.label)
    }

    func test_createdFromButtonExtension() {
        sut = UIButton.govUK

        if !buttonShapesEnabled {
            XCTAssertNil(sut.backgroundColor)
            XCTAssertFalse(sut.backgroundManager.hasBackground)
        } else {
            XCTAssertNotNil(sut.backgroundColor)
            XCTAssertTrue(sut.backgroundManager.hasBackground)
        }
    }

    func test_buttonBackground() {
        if !buttonShapesEnabled {
            XCTAssertNil(sut.backgroundColor)
            XCTAssertFalse(sut.backgroundManager.hasBackground)
        } else {
            XCTAssertNotNil(sut.backgroundColor)
            XCTAssertTrue(sut.backgroundManager.hasBackground)
        }

        sut.backgroundColor = .cyan

        XCTAssertTrue(sut.backgroundManager.hasBackground)
        XCTAssertNotNil(sut.backgroundColor)

        sut.backgroundColor = .clear

        XCTAssertFalse(sut.backgroundManager.hasBackground)
        XCTAssertNotNil(sut.backgroundColor)
    }

    func test_addBackground() {
        let sut = sut.addBackgroundTo()
        sut.setTitle("test title", for: .normal)

        XCTAssertEqual(sut.layer.cornerRadius, 22)
    }

    func test_buttonViewModelConfiguration() {
        sut = UIButton.govUK.primary
        sut.viewModelUpdate(viewModel: viewModel)

    }
}
