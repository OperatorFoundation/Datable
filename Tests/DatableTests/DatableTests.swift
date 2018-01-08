import XCTest
@testable import Datable

class DatableTests: XCTestCase {
    func testString() {
        let correct: String = "test"
        let data: Data = correct.data
        let result: String = String(data: data)
        
        XCTAssertEqual(result, correct)
    }

    func testData() {
        let correct: Data = Data(bytes: [0x00, 0x10, 0x0A])
        let data: Data = correct.data
        let result: Data = Data(data: data)
        
        XCTAssertEqual(result, correct)
    }

    func testInt() {
        let correct: Int = 1234567890
        let data: Data = correct.data
        let result: Int = Int(data: data)
        
        XCTAssertEqual(result, correct)
    }

    func testInt64() {
        let correct: Int64 = 1234567890
        let data: Data = correct.data
        let result: Int64 = Int64(data: data)
        
        XCTAssertEqual(result, correct)
    }

    func testInt32() {
        let correct: Int32 = 1234567890
        let data: Data = correct.data
        let result: Int32 = Int32(data: data)
        
        XCTAssertEqual(result, correct)
    }

    func testInt16() {
        let correct: Int16 = 12345
        let data: Data = correct.data
        let result: Int16 = Int16(data: data)
        
        XCTAssertEqual(result, correct)
    }

    func testInt8() {
        let correct: Int8 = 123
        let data: Data = correct.data
        let result: Int8 = Int8(data: data)
        
        XCTAssertEqual(result, correct)
    }

    func testUInt() {
        let correct: UInt = 1234567890
        let data: Data = correct.data
        let result: UInt = UInt(data: data)
        
        XCTAssertEqual(result, correct)
    }
    
    func testUInt64() {
        let correct: UInt64 = 1234567890
        let data: Data = correct.data
        let result: UInt64 = UInt64(data: data)
        
        XCTAssertEqual(result, correct)
    }
    
    func testUInt32() {
        let correct: UInt32 = 1234567890
        let data: Data = correct.data
        let result: UInt32 = UInt32(data: data)
        
        XCTAssertEqual(result, correct)
    }
    
    func testUInt16() {
        let correct: UInt16 = 12345
        let data: Data = correct.data
        let result: UInt16 = UInt16(data: data)
        
        XCTAssertEqual(result, correct)
    }
    
    func testUInt8() {
        let correct: UInt8 = 123
        let data: Data = correct.data
        let result: UInt8 = UInt8(data: data)
        
        XCTAssertEqual(result, correct)
    }
    
    func testDataFromStringLiteralUTF8() {
        let correct: String = "test😁"
        
        DatableConfig.stringLiteralEncoding = .utf8
        let data: Data = "test😁"
        
        let result: String = String(bytes: data, encoding: .utf8)!
        XCTAssertEqual(result, correct)
    }

    func testDataFromStringLiteralBase64() {
        let correct: String = "test"
        
        DatableConfig.stringLiteralEncoding = .base64
        let data: Data = "dGVzdA=="
        
        let result: String = String(bytes: data, encoding: .utf8)!
        XCTAssertEqual(result, correct)
    }
    
    func testDataFromStringLiteralASCII() {
        let correct: String = "test"
        
        DatableConfig.stringLiteralEncoding = .ascii
        let data: Data = "test"
        
        let result: String = String(bytes: data, encoding: .utf8)!
        XCTAssertEqual(result, correct)
    }
    
    func testStringableData() {
        let correct: String = "test"
        let data: Data = "test"
        let result: String = data.string
        
        XCTAssertEqual(result, correct)
    }
    
//    static var allTests = [
//        ("testExample", testExample),
//    ]
}
