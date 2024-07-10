@testable import UIComponents
import XCTest

struct MockViewModel: ButtonViewModel {
    var localisedTitle: String = "configured button"

    var action: () async throws -> Void

    var buttonConfiguration: GOVUKButton.ButtonConfiguration = .init(
        titleNormal: .purple,
        titleFocused: .green,
        titleFont: .title3,
        backgroundNormal: .green,
        backgroundFocused: .cyan,
        backgroundShape: .roundedRect(5))

    init(action: @escaping () -> Void) {
        self.action = action
    }
}

final class GOVUKButtonTests: XCTestCase {
    var sut: GOVUKButton!
    var didTap: Bool!
    var viewModel: ButtonViewModel!

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
        XCTAssertNil(sut.backgroundColor)
        XCTAssertFalse(sut.hasBackground)
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

        XCTAssertNotNil(sut)
        XCTAssertFalse(sut.hasBackground)
    }

    func test_createdFromButtonExtension2() {
        let action = UIAction(handler: { _ in self.didTap = true })
        sut = UIButton.govUK(action: action)

        XCTAssertNotNil(sut)
        XCTAssertFalse(sut.hasBackground)

        XCTAssertFalse(didTap)
        sut.sendActions(for: .touchUpInside)
        XCTAssertTrue(didTap)
    }

    func test_buttonBackground() {
        XCTAssertFalse(sut.hasBackground)
        XCTAssertNil(sut.backgroundColor)

        sut.backgroundColor = .cyan

        XCTAssertTrue(sut.backgroundManager.hasBackground)
        XCTAssertNotNil(sut.backgroundColor)

        sut.backgroundColor = .clear

        XCTAssertFalse(sut.hasBackground)
        XCTAssertNotNil(sut.backgroundColor)
    }

    func test_addBackground() {
        let sut = sut.addBackgroundTo()
        sut.setTitle("test title", for: .normal)

        let buttonShape = GOVUKButton.ButtonShape.capsule

        XCTAssertEqual(sut.layer.cornerRadius, 22)
    }

    func test_buttonViewModelConfiguration() {
        sut = UIButton.govUK.primary
        sut.viewModel = viewModel
        


    }
}
