@testable import UIComponents
import XCTest

final class GOVUKButtonTests: XCTestCase {
    var sut: GOVUKButton!
    var didTap: Bool!

    override func setUp() {
        super.setUp()

        sut = GOVUKButton()
        didTap = false
    }

    override func tearDown() {
        sut = nil
        didTap = nil

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

    @MainActor
    func test_addBackground() {
        let sut = sut.addBackgroundTo()
        sut.setTitle("test title", for: .normal)

        let buttonShape = GOVUKButton.ButtonShape.capsule

        XCTAssertEqual(sut.layer.cornerRadius, 22)
    }
}
