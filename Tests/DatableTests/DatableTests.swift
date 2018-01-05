import XCTest
@testable import Datable
import Datable

class DatableTests: XCTestCase {
    func testString() {
        let correct: String = "test"
        let data: Data = correct.data
        let result: String = String(data: data)
        
        XCTAssertEqual(result, correct)
    }

//    static var allTests = [
//        ("testExample", testExample),
//    ]
}
