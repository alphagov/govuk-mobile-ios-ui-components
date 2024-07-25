import Foundation
@testable import  UIComponents
import XCTest

final class UIButtonExtensionsTests: XCTestCase {
    var sut: UIButton!
    var action: UIAction!

    override func setUp() {
        super.setUp()
        sut = UIButton()
        action = UIAction(handler: { _ in })
    }

    override func tearDown() {
        super.tearDown()
        sut = nil
        action = nil
    }

    @objc func buttonAction() {
        // no implementation
    }
}

extension UIButtonExtensionsTests {

    func test_removeAllActions_withUIAction_removesAction() {
        XCTAssertTrue(sut.allControlEvents.isEmpty)
        sut.addAction(action, for: .touchUpInside)
        XCTAssertTrue(!sut.allControlEvents.isEmpty)

        sut.removeAllActions()
        XCTAssertTrue(sut.allControlEvents.isEmpty)
    }

    func test_removeAllActions_withTargetAction_removesAction() {
        XCTAssertTrue(sut.allControlEvents.isEmpty)
        sut.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        XCTAssertTrue(!sut.allControlEvents.isEmpty)

        sut.removeAllActions()
        XCTAssertTrue(sut.allControlEvents.isEmpty)
    }
}
