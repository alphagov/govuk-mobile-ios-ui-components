@testable import UIComponents
import XCTest
import SwiftUI

final class AdaptiveStackTests: XCTestCase {
    private var sut: AdaptiveStack<EmptyView>!

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
        sut = nil
    }
}

extension AdaptiveStackTests {
    
    func test_init_adaptiveStack_createsConditionalContent() {
        XCTAssertNil(sut)
        
        sut = AdaptiveStack<EmptyView>(content: {})
        
        XCTAssertNotNil(sut)
        
        let reflection = Mirror(reflecting: sut.body)
        
        XCTAssertEqual(reflection.children.count, 1)
        
        let wrappedConditionalContent = reflection.children .first(where: { label, value in
            value is _ConditionalContent<HStack<EmptyView>, VStack<EmptyView>>
        })
        
        XCTAssertNotNil(wrappedConditionalContent)
        
        let conditionalContent = try? XCTUnwrap(wrappedConditionalContent?.value as? 
            _ConditionalContent<HStack<EmptyView>, VStack<EmptyView>>)
        
        XCTAssertNotNil(conditionalContent)
    }
}
