import XCTest
@testable import Datable

class DatableTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Datable().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
