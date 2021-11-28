import XCTest
@testable import Datable

class DatableTests: XCTestCase
{
    func testString()
    {
        let correct: String = "test"
        let data: Data = correct.data
        let result: String = String(data: data)
        
        XCTAssertEqual(result, correct)
    }
    
    func testDataStringable()
    {
        let correctString: String = "test"
        let dataFromString = Data(string: correctString)
        let stringFromData = dataFromString.string
        
        XCTAssertEqual(stringFromData, correctString)
    }

    func testData() {
        let correct: Data = Data([0x00, 0x10, 0x0A])
        let data: Data = correct.data
        let result: Data = Data(data: data)
        
        XCTAssertEqual(result, correct)
    }

    func testInt() {
        let correct: Int = 1234567890
        let data: Data = correct.data
        let result = Int(data: data)
        XCTAssertNotNil(result)
        
        XCTAssertEqual(result!, correct)
    }

    func testInt64() {
        let correct: Int64 = 1234567890
        let data: Data = correct.data
        let result = Int64(data: data)
        XCTAssertNotNil(result)
        
        XCTAssertEqual(result!, correct)
    }

    func testInt32() {
        let correct: Int32 = 1234567890
        let data: Data = correct.data
        let result = Int32(data: data)
        XCTAssertNotNil(result)
        
        XCTAssertEqual(result!, correct)
    }

    func testInt16() {
        let correct: Int16 = 12345
        let data: Data = correct.data
        let result = Int16(data: data)
        XCTAssertNotNil(result)
        
        XCTAssertEqual(result!, correct)
    }

    func testInt8() {
        let correct: Int8 = 123
        let data: Data = correct.data
        let result = Int8(data: data)
        XCTAssertNotNil(result)
        
        XCTAssertEqual(result!, correct)
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

    func testDataFromStringLiteralHex() {
        let correct: String = "test"
        
        DatableConfig.stringLiteralEncoding = .hex
        let data: Data = "74657374"
        
        let result: String = String(bytes: data, encoding: .utf8)!
        XCTAssertEqual(result, correct)
    }
    
    func testStringableData() {
        let correct: String = "test"
        let data: Data = "test"
        let result: String = data.string
        
        XCTAssertEqual(result, correct)
    }
    
    func testStringableDouble() {
        let correct: String = "2.1"
        let double: Double = 2.1
        let result: String = double.string
        
        XCTAssertEqual(result, correct)
    }
    
    func testIntableString() {
        let correct: Int = 1234
        let string: String = "1234"
        let result: Int = string.int
        
        XCTAssertEqual(correct, result);
    }
    
    func testArrayableArrayToData()
    {
        let correct: Data = Data([0x00, 0x10, 0x0A])
        let array: [UInt8] = [0x00, 0x10, 0x0A]
        let result: Data = Data(array: array)
        
        XCTAssertEqual(result, correct)
    }

    func testArrayableDataArray()
    {
        let correct: [UInt8] = [0x00, 0x10, 0x0A]
        let data: Data = Data([0x00, 0x10, 0x0A])
        let result: [UInt8] = data.array

        XCTAssertEqual(result, correct)
    }
                
    // MARK: Float
    
    func testDatableFloatZero()
    {
        // A float is 32 bits
        // These are not divided into bytes
        //  (1)sign, (8)exponent, (23)base
        
        let correct: Float = 0.0
        
        let data: Data = correct.data
        let result = data.float
        XCTAssertNotNil(result)
        
        XCTAssertEqual(correct, result!)
    }
    
    func testFloatableDataZero()
    {
        // A float is 32 bits
        // These are not divided into bytes
        //  (1)sign, (8)exponent, (23)base

        let correct: Float = 0.0
        let input: Data = Data(array: [0x00, 0x00, 0x00, 0x00])
        
        let result = input.float
        XCTAssertNotNil(result)
        
        XCTAssertEqual(correct, result!)
    }
    
    func testDatableFloatInitZero()
    {
        // A float is 32 bits
        // These are not divided into bytes
        //  (1)sign, (8)exponent, (23)base

        let correct: Float = 0.0
        let input: Data = Data(array: [0x00, 0x00, 0x00, 0x00])
        
        let result = Float(data: input)
        XCTAssertNotNil(result)
        
        XCTAssertEqual(correct, result!)
    }
    
    func testDatableFloatFailTooBig()
    {
        // A float is 32 bits
        // These are not divided into bytes
        //  (1)sign, (8)exponent, (23)base

        let input: Data = Data(repeating: 0, count: 9)
        
        let result = Float(data: input)
        XCTAssertNil(result)
    }

    func testFloatableDataFailTooBig()
    {
        let input: Data = Data(repeating: 0, count: 9)
        
        let result = input.float
        XCTAssertNil(result)
    }
    
    func testDatableFloatFailTooSmall()
    {
        // A float is 32 bits
        // These are not divided into bytes
        //  (1)sign, (8)exponent, (23)base

        let input: Data = Data(repeating: 0, count: 3)
        
        let result = Float(data: input)
        XCTAssertNil(result)
    }

    func testFloatableDataFailTooSmall()
    {
        let input: Data = Data(repeating: 0, count: 3)
        
        let result = input.float
        XCTAssertNil(result)
    }
    
    func testDatableFloatDownconvertDouble()
    {
        // A float is 32 bits
        // These are not divided into bytes
        //  (1)sign, (8)exponent, (23)base

        let correct: Float = 0.0
        let input: Data = Data(repeating: 0, count: 8)
        
        let result = Float(data: input)
        XCTAssertNotNil(result)
        
        XCTAssertEqual(correct, result!)
    }

    func testFloatableDataDownconvertDouble()
    {
        let correct: Float = 0.0
        let input: Data = Data(repeating: 0, count: 8)
        
        let result = input.float
        XCTAssertNotNil(result)
        
        XCTAssertEqual(correct, result!)
    }
    
    func testDatableFloatFailDownconvertDouble()
    {
        // A float is 32 bits
        // These are not divided into bytes
        //  (1)sign, (8)exponent, (23)base

        let input: Data = Data(repeating: 0xFF, count: 8)
        
        let result = Float(data: input)
        XCTAssertNotNil(result)
        
        XCTAssertTrue(result!.isNaN)
    }
    
    func testFloatableData()
    {
        // A float is 32 bits
        // These are not divided into bytes
        //  (1)sign, (8)exponent, (23)base

        let correct: Data = Data(array: [0x00, 0x00, 0x00, 0x00])
        let input: Float = 0.0
        
        let result = Data(float: input)
        XCTAssertNotNil(result)
        
        XCTAssertEqual(correct, result!)
    }
    
    // MARK: Double

    func testDoubleStringable()
    {
        let numberString = "5.5"
        let number: Double = 5.5
        let numberFromString = Double(string: numberString)
        let stringFromNumber = numberFromString.string
        
        XCTAssertEqual(number, numberFromString)
        XCTAssertEqual(numberString, stringFromNumber)
    }
    
    func testDatableDoubleZero()
    {
        // A float is 32 bits
        // These are not divided into bytes
        //  (1)sign, (8)exponent, (23)base
        
        let correct: Double = 0.0
        
        let data: Data = correct.data
        let result = data.double
        XCTAssertNotNil(result)

        XCTAssertEqual(correct, result!)
    }
    
    func testFloatableDataZeroDouble()
    {
        // A float is 32 bits
        // These are not divided into bytes
        //  (1)sign, (8)exponent, (23)base

        let correct: Double = 0.0
        let input: Data = Data(array: [0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00])
        
        let result = input.double
        XCTAssertNotNil(result)
        
        XCTAssertEqual(correct, result!)
    }
    
    func testDatableDoubleInitZero()
    {
        // A float is 32 bits
        // These are not divided into bytes
        //  (1)sign, (8)exponent, (23)base

        let correct: Double = 0.0
        let input: Data = Data(array: [0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00])
        
        let result = Double(data: input)
        XCTAssertNotNil(result)
        
        XCTAssertEqual(correct, result!)
    }
    
    func testDatableDoubleFailTooBig()
    {
        let input: Data = Data(repeating: 0, count: 9)
        
        let result = Double(data: input)
        XCTAssertNil(result)
    }
    
    func testFloatableDataFailTooBigDouble()
    {
        let input: Data = Data(repeating: 0, count: 9)
        
        let result = input.double
        XCTAssertNil(result)
    }
    
    func testDatableDoubleFailTooSmall()
    {
        let input: Data = Data(repeating: 0, count: 3)
        
        let result = Double(data: input)
        XCTAssertNil(result)
    }
            
    func testDatableDoubleUpconvertFloat()
    {
        let correct: Double = 0.0
        let input: Data = Data(repeating: 0, count: 4)
        
        let result = Double(data: input)
        XCTAssertNotNil(result)
        
        XCTAssertEqual(correct, result!)
    }
    
    func testDatableDoubleUpconvertFloatSwapEndianness()
    {
        DatableConfig.endianess = .big
        
        let correct: Double = 0.0
        let input: Data = Data(repeating: 0, count: 4)
        
        let result = Double(data: input)
        XCTAssertNotNil(result)
        
        XCTAssertEqual(correct, result!)
    }

    func testDatableDoubleSwapEndianness()
    {
        DatableConfig.endianess = .big
        
        let correct: Double = 0.0
        let input: Data = Data(repeating: 0, count: 8)
        
        let result = Double(data: input)
        XCTAssertNotNil(result)
        
        XCTAssertEqual(correct, result!)
    }
    
    func testFloatableDataDoubleUpconvertFloat()
    {
        let correct: Double = 0.0
        let input: Data = Data(repeating: 0, count: 4)
        
        let result = input.double
        XCTAssertNotNil(result)
        
        XCTAssertEqual(correct, result!)
    }

    func testFloatableDataFailDoubleUpconvertFloat()
    {
        let input: Data = Data(repeating: 0xFF, count: 4)
        
        let result = input.double
        XCTAssertNotNil(result)
        XCTAssertTrue(result!.isNaN)
    }
    
    func testFloatableDataDouble()
    {
        // A float is 32 bits
        // These are not divided into bytes
        //  (1)sign, (8)exponent, (23)base

        let correct: Data = Data(repeating: 0, count: 8)
        let input: Double = 0.0
        
        let result = Data(double: input)
        XCTAssertNotNil(result)
        
        XCTAssertEqual(correct, result!)
    }
    
    // MARK: UInt
    
    func testStringUIntable()
    {
        let correctString = "5"
        let correctnumber: UInt = 5
        let stringFromNumber = String(uint: correctnumber)
        let numberFromString = stringFromNumber.uint
        
        XCTAssertEqual(correctString, stringFromNumber)
        XCTAssertEqual(correctnumber, numberFromString)
    }
    
    func testUintStringable()
    {
        let numberString = "5"
        let number: UInt = 5
        let numberFromString = UInt(string: numberString)
        let stringFromNumber = numberFromString.string
        
        XCTAssertEqual(number, numberFromString)
        XCTAssertEqual(numberString, stringFromNumber)
    }
    
    func testDataUIntable()
    {
        let correctNumber = UInt(0x11)
        let dataFromNumber = Data(uint: correctNumber)
        XCTAssertNotNil(dataFromNumber)
        
        XCTAssertEqual(dataFromNumber!, correctNumber.data)
        
        let numberFromData = dataFromNumber!.uint
        XCTAssertEqual(numberFromData, correctNumber)
    }
    
//    func testUintStringableFail()
//    {
//        let number: UInt = 5
//        let uintFromString = UInt(string: "5.0")
//        
//        XCTAssertEqual(number, uintFromString)
//    }
    
    func testUIntZeroBytesLittleE()
    {
        DatableConfig.endianess = .little
        let data = Data()
        let result = data.uint
        
        XCTAssertEqual(0, result)
    }
    
    func testUIntOneByteLittleE()
    {
        DatableConfig.endianess = .little
        let correct = UInt(0x11)
        let data = Data(array: [0x11])
        let result = data.uint
        XCTAssertNotNil(result)
          
        XCTAssertEqual(correct, result!)
        
        let uIntData = result!.data
        XCTAssertEqual(uIntData.uint, result!)
    }
    
    func testUIntTwoByteLittleE()
    {
        DatableConfig.endianess = .little
        let correct = UInt(0x1111)
        let data = Data(array: [0x11, 0x11])
        let result = data.uint!
          
        XCTAssertEqual(correct, result)
        
        let uIntData = result.data
        XCTAssertEqual(uIntData.uint, result)
    }
    
    func testUIntFourBytesLittleE()
    {
        DatableConfig.endianess = .little
        let correct = UInt(0x11111111)
        let data = Data(array: [0x11, 0x11, 0x11, 0x11])
        let result = data.uint!
          
        XCTAssertEqual(correct, result)
        
        let uIntData = result.data
        XCTAssertEqual(uIntData.uint, result)
    }
    
    func testUIntNineBytesLittleE()
    {
        DatableConfig.endianess = .little
        let data = Data(array: [0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11])
        let result = data.uint
        
        // 0 is an indication that the initializer failed atm
        XCTAssertEqual(0, result)
    }
    
    func testUIntZeroBytesBigE()
    {
        DatableConfig.endianess = .big
        let data = Data()
        let result = data.uint
        
        XCTAssertEqual(0, result)
    }
    
    func testUIntOneByteBigeE()
    {
        DatableConfig.endianess = .big
        let correct = UInt(0x11)
        let data = Data(array: [0x11])
        let result = data.uint!
          
        XCTAssertEqual(correct, result)
        
        let uIntData = result.data
        XCTAssertEqual(uIntData.uint, result)
    }
    
    func testUIntTwoByteBigE()
    {
        DatableConfig.endianess = .big
        let correct = UInt(0x1111)
        let data = Data(array: [0x11, 0x11])
        let result = data.uint!
          
        XCTAssertEqual(correct, result)
        
        let uIntData = result.data
        XCTAssertEqual(uIntData.uint, result)
    }
    
    func testUIntFourBytesBigE()
    {
        DatableConfig.endianess = .big
        let correct = UInt(0x11111111)
        let data = Data(array: [0x11, 0x11, 0x11, 0x11])
        let result = data.uint!
          
        XCTAssertEqual(correct, result)
        
        let uIntData = result.data
        XCTAssertEqual(uIntData.uint, result)
    }
    
    func testUIntNineBytesBigE()
    {
        DatableConfig.endianess = .big
        let data = Data(array: [0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11])
        let result = data.uint!
        
        // 0 is an indication that the initializer failed atm
        XCTAssertEqual(0, result)
    }
    
    // MARK: UInt64
    
    func testStringUInt64able()
    {
        let correctString = "5"
        let correctnumber: UInt64 = 5
        let stringFromNumber = String(uint64: correctnumber)
        let numberFromString = stringFromNumber.uint64
        
        XCTAssertEqual(correctString, stringFromNumber)
        XCTAssertEqual(correctnumber, numberFromString)
    }
    
    func testUInt64Stringable()
    {
        let numberString = "5"
        let number: UInt64 = 5
        let numberFromString = UInt64(string: numberString)
        let stringFromNumber = numberFromString.string
        
        XCTAssertEqual(number, numberFromString)
        XCTAssertEqual(numberString, stringFromNumber)
    }
    
    func testDataUInt64able()
    {
        let correctNumber = UInt64(0x11)
        let dataFromNumber = Data(uint64: correctNumber)!
        
        XCTAssertEqual(dataFromNumber, correctNumber.data)
        
        let numberFromData = dataFromNumber.uint64!
        XCTAssertEqual(numberFromData, correctNumber)
    }
    
    func testUInt64ZeroBytesLittleE()
    {
        DatableConfig.endianess = .little
        let data = Data()
        let result = data.uint64
        
        XCTAssertEqual(0, result)
    }
    
    func testUInt64OneByteLittleE()
    {
        DatableConfig.endianess = .little
        let correct = UInt64(0x11)
        let data = Data(array: [0x11])
        let result = data.uint64!
          
        XCTAssertEqual(correct, result)
        
        let uIntData = result.data
        XCTAssertEqual(uIntData.uint64, result)
    }
    
    func testUInt64TwoByteLittleE()
    {
        DatableConfig.endianess = .little
        let correct = UInt64(0x1111)
        let data = Data(array: [0x11, 0x11])
        let result = data.uint64!
          
        XCTAssertEqual(correct, result)
        
        let uIntData = result.data
        XCTAssertEqual(uIntData.uint64, result)
    }
    
    func testUInt64FourBytesLittleE()
    {
        DatableConfig.endianess = .little
        let correct = UInt64(0x11111111)
        let data = Data(array: [0x11, 0x11, 0x11, 0x11])
        let result = data.uint64!
          
        XCTAssertEqual(correct, result)
        
        let uIntData = result.data
        XCTAssertEqual(uIntData.uint64, result)
    }
    
    func testUInt64NineBytesLittleE()
    {
        DatableConfig.endianess = .little
        let data = Data(array: [0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11])
        let result = data.uint64!
        
        // 0 is an indication that the initializer failed atm
        XCTAssertEqual(0, result)
    }
    
    func testUInt64ZeroBytesBigE()
    {
        DatableConfig.endianess = .big
        let data = Data()
        let result = data.uint64!
        
        XCTAssertEqual(0, result)
    }
    
    func testUInt64OneByteBigeE()
    {
        DatableConfig.endianess = .big
        let correct = UInt64(0x11)
        let data = Data(array: [0x11])
        let result = data.uint64!
          
        XCTAssertEqual(correct, result)
        
        let uIntData = result.data
        XCTAssertEqual(uIntData.uint64, result)
    }
    
    func testUInt64TwoByteBigE()
    {
        DatableConfig.endianess = .big
        let correct = UInt64(0x1111)
        let data = Data(array: [0x11, 0x11])
        let result = data.uint64!
          
        XCTAssertEqual(correct, result)
        
        let uIntData = result.data
        XCTAssertEqual(uIntData.uint64, result)
    }
    
    func testUInt64FourBytesBigE()
    {
        DatableConfig.endianess = .big
        let correct = UInt64(0x11111111)
        let data = Data(array: [0x11, 0x11, 0x11, 0x11])
        let result = data.uint64!
          
        XCTAssertEqual(correct, result)
        
        let uIntData = result.data
        XCTAssertEqual(uIntData.uint64, result)
    }
    
    func testUInt64NineBytesBigE()
    {
        DatableConfig.endianess = .big
        let data = Data(array: [0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11])
        let result = data.uint64!
        
        // 0 is an indication that the initializer failed atm
        XCTAssertEqual(0, result)
    }
    
    // MARK: UInt32
    
    func testStringUInt32able()
    {
        let correctString = "5"
        let correctnumber: UInt32 = 5
        let stringFromNumber = String(uint32: correctnumber)
        let numberFromString = stringFromNumber.uint32
        
        XCTAssertEqual(correctString, stringFromNumber)
        XCTAssertEqual(correctnumber, numberFromString)
    }
    
    func testUInt32Stringable()
    {
        let numberString = "5"
        let number: UInt32 = 5
        let numberFromString = UInt32(string: numberString)
        let stringFromNumber = numberFromString.string
        
        XCTAssertEqual(number, numberFromString)
        XCTAssertEqual(numberString, stringFromNumber)
    }
    
    func testDataUInt32able()
    {
        let correctNumber = UInt32(0x11)
        let dataFromNumber = Data(uint32: correctNumber)!
        
        XCTAssertEqual(dataFromNumber, correctNumber.data)
        
        let numberFromData = dataFromNumber.uint32!
        XCTAssertEqual(numberFromData, correctNumber)
    }
    
    func testUInt32ZeroBytesLittleE()
    {
        DatableConfig.endianess = .little
        let data = Data()
        let result = data.uint32!
        
        XCTAssertEqual(0, result)
    }
    
    func testUInt32OneByteLittleE()
    {
        DatableConfig.endianess = .little
        let correct = UInt32(0x11)
        let data = Data(array: [0x11])
        let result = data.uint32!
          
        XCTAssertEqual(correct, result)
        
        let uIntData = result.data
        XCTAssertEqual(uIntData.uint32, result)
    }
    
    func testUInt32TwoByteLittleE()
    {
        DatableConfig.endianess = .little
        let correct = UInt32(0x1111)
        let data = Data(array: [0x11, 0x11])
        let result = data.uint32!
          
        XCTAssertEqual(correct, result)
        
        let uIntData = result.data
        XCTAssertEqual(uIntData.uint32, result)
    }
    
    func testUInt32FourBytesLittleE()
    {
        DatableConfig.endianess = .little
        let correct = UInt32(0x11111111)
        let data = Data(array: [0x11, 0x11, 0x11, 0x11])
        let result = data.uint32!
          
        XCTAssertEqual(correct, result)
        
        let uIntData = result.data
        XCTAssertEqual(uIntData.uint32, result)
    }
    
    func testUInt32FiveBytesLittleE()
    {
        DatableConfig.endianess = .little
        let data = Data(array: [0x11, 0x11, 0x11, 0x11, 0x11])
        let result = data.uint32!
        
        // 0 is an indication that the initializer failed atm
        XCTAssertEqual(0, result)
    }
    
    func testUInt32ZeroBytesBigE()
    {
        DatableConfig.endianess = .big
        let data = Data()
        let result = data.uint32!
        
        XCTAssertEqual(0, result)
    }
    
    func testUInt32OneByteBigeE()
    {
        DatableConfig.endianess = .big
        let correct = UInt32(0x11)
        let data = Data(array: [0x11])
        let result = data.uint32!
          
        XCTAssertEqual(correct, result)
        
        let uIntData = result.data
        XCTAssertEqual(uIntData.uint32, result)
    }
    
    func testUInt32TwoByteBigE()
    {
        DatableConfig.endianess = .big
        let correct = UInt32(0x1111)
        let data = Data(array: [0x11, 0x11])
        let result = data.uint32!
          
        XCTAssertEqual(correct, result)
        
        let uIntData = result.data
        XCTAssertEqual(uIntData.uint32, result)
    }
    
    func testUInt32FourBytesBigE()
    {
        DatableConfig.endianess = .big
        let correct = UInt32(0x11111111)
        let data = Data(array: [0x11, 0x11, 0x11, 0x11])
        let result = data.uint32!
          
        XCTAssertEqual(correct, result)
        
        let uIntData = result.data
        XCTAssertEqual(uIntData.uint32, result)
    }
    
    func testUInt32FiveBytesBigE()
    {
        DatableConfig.endianess = .big
        let data = Data(array: [0x11, 0x11, 0x11, 0x11, 0x11])
        let result = data.uint32!
        
        // 0 is an indication that the initializer failed atm
        XCTAssertEqual(0, result)
    }
    
    // MARK: UInt16
    
    func testStringUInt16able()
    {
        let correctString = "5"
        let correctnumber: UInt16 = 5
        let stringFromNumber = String(uint16: correctnumber)
        let numberFromString = stringFromNumber.uint16
        
        XCTAssertEqual(correctString, stringFromNumber)
        XCTAssertEqual(correctnumber, numberFromString)
    }
    
    func testUInt16Stringable()
    {
        let numberString = "5"
        let number: UInt16 = 5
        let numberFromString = UInt16(string: numberString)
        let stringFromNumber = numberFromString.string
        
        XCTAssertEqual(number, numberFromString)
        XCTAssertEqual(numberString, stringFromNumber)
    }
    
    func testDataUInt16able()
    {
        let correctNumber = UInt16(0x11)
        let dataFromNumber = Data(uint16: correctNumber)!
        
        XCTAssertEqual(dataFromNumber, correctNumber.data)
        
        let numberFromData = dataFromNumber.uint16
        XCTAssertEqual(numberFromData, correctNumber)
    }
    
    func testUInt16ZeroBytesLittleE()
    {
        DatableConfig.endianess = .little
        let data = Data()
        let result = data.uint16!
        
        XCTAssertEqual(0, result)
    }
    
    func testUInt16OneByteLittleE()
    {
       DatableConfig.endianess = .little
       let correct = UInt16(0x08)
       let data = Data(array: [0x08])
       let result = data.uint16!
       
       XCTAssertEqual(correct, result)
        
        let uIntData = result.data
        XCTAssertEqual(uIntData.uint16, result)
    }
    
    func testUInt16TwoBytesLittleE()
    {
        DatableConfig.endianess = .little
        let correct = UInt16(0x1111)
        let data = Data(array: [0x11, 0x11])
        let result = data.uint16!
          
        XCTAssertEqual(correct, result)
        
        let uIntData = result.data
        XCTAssertEqual(uIntData.uint16, result)
    }
    
    func testUInt16FiveBytesLittleE()
    {
        DatableConfig.endianess = .little
        let data = Data(array: [0x11, 0x11, 0x11, 0x11, 0x11])
        let result = data.uint16!
        
        // 0 is an indication that the initializer failed (for now)
        // This should fail because the value is larger than is possible for UInt16
        XCTAssertEqual(0, result)
    }
    
    func testUInt16ZeroBytesBigE()
    {
        DatableConfig.endianess = .big
        let data = Data()
        let result = data.uint16!
        
        XCTAssertEqual(0, result)
    }
    
    func testUInt16OneByteBigE()
    {
       DatableConfig.endianess = .big
       let correct = UInt16(0x08)
       let data = Data(array: [0x08])
       let result = data.uint16!
       
       XCTAssertEqual(correct, result)
        
        let uIntData = result.data
        XCTAssertEqual(uIntData.uint16, result)
    }
    
    func testUInt16TwoBytesBigE()
    {
        DatableConfig.endianess = .big
        let correct = UInt16(0x1111)
        let data = Data(array: [0x11, 0x11])
        let result = data.uint16!
          
        XCTAssertEqual(correct, result)
        
        let uIntData = result.data
        XCTAssertEqual(uIntData.uint16, result)
    }
    
    func testUInt16FiveBytesBigE()
    {
        DatableConfig.endianess = .big
        let data = Data(array: [0x11, 0x11, 0x11, 0x11, 0x11])
        let result = data.uint16!
        
        // 0 is an indication that the initializer failed (for now)
        // This should fail because the value is larger than is possible for UInt16
        XCTAssertEqual(0, result)
    }
    
    // MARK: UInt8
    
    func testStringUInt8able()
    {
        let correctString = "5"
        let correctnumber: UInt8 = 5
        let stringFromNumber = String(uint8: correctnumber)
        let numberFromString = stringFromNumber.uint8
        
        XCTAssertEqual(correctString, stringFromNumber)
        XCTAssertEqual(correctnumber, numberFromString)
    }
    
    func testUInt8Stringable()
    {
        let numberString = "5"
        let number: UInt8 = 5
        let numberFromString = UInt8(string: numberString)
        let stringFromNumber = numberFromString.string
        
        XCTAssertEqual(number, numberFromString)
        XCTAssertEqual(numberString, stringFromNumber)
    }
    
    func testDataUInt8able()
    {
        let correctNumber = UInt8(0x11)
        let dataFromNumber = Data(uint8: correctNumber)!
        
        XCTAssertEqual(dataFromNumber, correctNumber.data)
        
        let numberFromData = dataFromNumber.uint8
        XCTAssertEqual(numberFromData, correctNumber)
    }
    
    func testUInt8ZeroBytesLittleE()
    {
        DatableConfig.endianess = .little
        let data = Data()
        let result = data.uint8!
        
        XCTAssertEqual(0, result)
    }
    
    func testUInt8OneByteLittleE()
    {
       DatableConfig.endianess = .little
       let correct = UInt8(0x08)
       let data = Data(array: [0x08])
       let result = data.uint8!
       
       XCTAssertEqual(correct, result)
        
        let uIntData = result.data
        XCTAssertEqual(uIntData.uint8, result)
    }
    
    func testUInt8TwoBytesLittleE()
    {
        DatableConfig.endianess = .little
        let correct = UInt8(0x0001)
        let data = Data(array: [0x01, 0x00])
        let result = data.uint8!
          
        XCTAssertEqual(correct, result)
        
        let uIntData = result.data
        XCTAssertEqual(uIntData.uint8, result)
    }
    
    func testUInt8ThreeBytesLittleE()
    {
        DatableConfig.endianess = .little
        let data = Data(array: [0x11, 0x11, 0x11])
        let result = data.uint8!

        XCTAssertEqual(0, result)
    }
    
    func testUInt8ZeroBytesBigE()
    {
        DatableConfig.endianess = .big
        let data = Data()
        let result = data.uint8!
        
        XCTAssertEqual(0, result)
    }
    
    func testUInt8OneByteBigE()
    {
       DatableConfig.endianess = .big
       let correct = UInt8(0x08)
       let data = Data(array: [0x08])
       let result = data.uint8!
       
       XCTAssertEqual(correct, result)
        
        let uIntData = result.data
        XCTAssertEqual(uIntData.uint8, result)
    }
    
    func testUInt8TwoBytesBigE()
    {
        DatableConfig.endianess = .big
        let data = Data(array: [0x11, 0x11])
        let result = data.uint8!
          
        XCTAssertEqual(0, result)
    }
    
    // MARK: Int
    
    func testStringIntable()
    {
        let correctString = "5"
        let correctnumber: Int = 5
        let stringFromNumber = String(int: correctnumber)
        let numberFromString = stringFromNumber.int
        
        XCTAssertEqual(correctString, stringFromNumber)
        XCTAssertEqual(correctnumber, numberFromString)
    }
    
    func testIntStringable()
    {
        let numberString = "5"
        let number: Int = 5
        let numberFromString = Int(string: numberString)
        let stringFromNumber = numberFromString.string
        
        XCTAssertEqual(number, numberFromString)
        XCTAssertEqual(numberString, stringFromNumber)
    }
    
    func testDataIntable()
    {
        let correctNumber = Int(0x11)
        let dataFromNumber = Data(int: correctNumber)!
        
        XCTAssertEqual(dataFromNumber, correctNumber.data)
        
        let numberFromData = dataFromNumber.int
        XCTAssertEqual(numberFromData, correctNumber)
    }
    
    func testIntFailZeroBytesLittleE()
    {
        DatableConfig.endianess = .little
        let data = Data()
        let result = data.int
        XCTAssertNil(result)
    }
    
    func testIntOneByteLittleE()
    {
        DatableConfig.endianess = .little
        let correct = Int(0x11)
        let data = Data(array: [0x11])
        let result = data.int!
          
        XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int, result)
    }
    
    func testIntTwoByteLittleE()
    {
        DatableConfig.endianess = .little
        let correct = Int(0x1111)
        let data = Data(array: [0x11, 0x11])
        let result = data.int!
          
        XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int, result)
    }
    
    func testIntFourBytesLittleE()
    {
        DatableConfig.endianess = .little
        let correct = Int(0x11111111)
        let data = Data(array: [0x11, 0x11, 0x11, 0x11])
        let result = data.int!
          
        XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int, result)
    }
    
    func testIntFailNineBytesLittleE()
    {
        DatableConfig.endianess = .little
        let data = Data(array: [0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11])
        let result = data.int
        XCTAssertNil(result)
    }
    
    func testIntFailZeroBytesBigE()
    {
        DatableConfig.endianess = .big
        let data = Data()
        let result = data.int
        XCTAssertNil(result)
    }
    
    func testIntOneByteBigeE()
    {
        DatableConfig.endianess = .big
        let correct = Int(0x11)
        let data = Data(array: [0x11])
        let result = data.int!
          
        XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int, result)
    }
    
    func testIntTwoByteBigE()
    {
        DatableConfig.endianess = .big
        let correct = Int(0x1111)
        let data = Data(array: [0x11, 0x11])
        let result = data.int!
          
        XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int, result)
    }
    
    func testIntFourBytesBigE()
    {
        DatableConfig.endianess = .big
        let correct = Int(0x11111111)
        let data = Data(array: [0x11, 0x11, 0x11, 0x11])
        let result = data.int!
          
        XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int, result)
    }
    
    func testIntFailNineBytesBigE()
    {
        DatableConfig.endianess = .big
        let data = Data(array: [0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11])
        let result = data.int
        XCTAssertNil(result)
    }
        
    // MARK: Int64
    
    func testStringInt64able()
    {
        let correctString = "5"
        let correctnumber: Int64 = 5
        let stringFromNumber = String(int64: correctnumber)
        let numberFromString = stringFromNumber.int64
        
        XCTAssertEqual(correctString, stringFromNumber)
        XCTAssertEqual(correctnumber, numberFromString)
    }
    
    func testInt64Stringable()
    {
        let numberString = "5"
        let number: Int64 = 5
        let numberFromString = Int64(string: numberString)
        let stringFromNumber = numberFromString.string
        
        XCTAssertEqual(number, numberFromString)
        XCTAssertEqual(numberString, stringFromNumber)
    }
    
    func testDataInt64able()
    {
        let correctNumber = Int64(0x11)
        let dataFromNumber = Data(int64: correctNumber)!
        
        XCTAssertEqual(dataFromNumber, correctNumber.data)
        
        let numberFromData = dataFromNumber.int64
        XCTAssertEqual(numberFromData, correctNumber)
    }
    
    func testInt64FailZeroBytesLittleE()
    {
        DatableConfig.endianess = .little
        let data = Data()
        let result = data.int64
        XCTAssertNil(result)
    }
    
    func testInt64OneByteLittleE()
    {
        DatableConfig.endianess = .little
        let correct = Int64(0x11)
        let data = Data(array: [0x11])
        let result = data.int64!
          
        XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int64, result)
    }
    
    func testInt64TwoByteLittleE()
    {
        DatableConfig.endianess = .little
        let correct = Int64(0x1111)
        let data = Data(array: [0x11, 0x11])
        let result = data.int64!
          
        XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int64, result)
    }
    
    func testInt64FourBytesLittleE()
    {
        DatableConfig.endianess = .little
        let correct = Int64(0x11111111)
        let data = Data(array: [0x11, 0x11, 0x11, 0x11])
        let result = data.int64!
          
        XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int64, result)
    }
    
    func testInt64FiveBytesLittleE()
    {
        DatableConfig.endianess = .little
        let data = Data(array: [0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11])
        let result = data.int64
        XCTAssertNil(result)
    }
    
    func testInt64FailZeroBytesBigE()
    {
        DatableConfig.endianess = .big
        let data = Data()
        let result = data.int64
        XCTAssertNil(result)
    }
    
    func testInt64OneByteBigeE()
    {
        DatableConfig.endianess = .big
        let correct = Int64(0x11)
        let data = Data(array: [0x11])
        let result = data.int64!
          
        XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int64, result)
    }
    
    func testInt64TwoByteBigE()
    {
        DatableConfig.endianess = .big
        let correct = Int64(0x1111)
        let data = Data(array: [0x11, 0x11])
        let result = data.int64!
          
        XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int64, result)
    }
    
    func testInt64FourBytesBigE()
    {
        DatableConfig.endianess = .big
        let correct = Int64(0x11111111)
        let data = Data(array: [0x11, 0x11, 0x11, 0x11])
        let result = data.int64!
          
        XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int64, result)
    }

    func testInt64FailFourBytesBigENegativeOne()
    {
        DatableConfig.endianess = .big
        let input: Int32 = -1
        let data = input.data
        let result = data.int64
        XCTAssertNil(result)
    }

    func testInt64FailFourBytesLittleENegativeOne()
    {
        DatableConfig.endianess = .little
        let input: Int32 = -1
        let data = input.data
        let result = data.int64
        XCTAssertNil(result)
    }
    
    func testInt64FailNineBytesBigE()
    {
        DatableConfig.endianess = .big
        let data = Data(array: [0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11])
        let result = data.int64
        XCTAssertNil(result)
    }
    
    // MARK: Int32
    
    func testStringInt34able()
    {
        let correctString = "5"
        let correctnumber: Int32 = 5
        let stringFromNumber = String(int32: correctnumber)
        let numberFromString = stringFromNumber.int32
        
        XCTAssertEqual(correctString, stringFromNumber)
        XCTAssertEqual(correctnumber, numberFromString)
    }
    
    func testInt32Stringable()
    {
        let numberString = "5"
        let number: Int32 = 5
        let numberFromString = Int32(string: numberString)
        let stringFromNumber = numberFromString.string
        
        XCTAssertEqual(number, numberFromString)
        XCTAssertEqual(numberString, stringFromNumber)
    }
    
    func testDataInt32able()
    {
        let correctNumber = Int32(0x11)
        let dataFromNumber = Data(int32: correctNumber)!
        
        XCTAssertEqual(dataFromNumber, correctNumber.data)
        
        let numberFromData = dataFromNumber.int32
        XCTAssertEqual(numberFromData, correctNumber)
    }
    
    func testIntFail32ZeroBytesLittleE()
    {
        DatableConfig.endianess = .little
        let data = Data()
        let result = data.int32
        XCTAssertNil(result)
    }
    
    func testInt32OneByteLittleE()
    {
        DatableConfig.endianess = .little
        let correct = Int32(0x11)
        let data = Data(array: [0x11])
        let result = data.int32!
          
        XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int32, result)
    }
    
    func testInt32TwoByteLittleE()
    {
        DatableConfig.endianess = .little
        let correct = Int32(0x1111)
        let data = Data(array: [0x11, 0x11])
        let result = data.int32!
          
        XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int32, result)
    }
    
    func testInt32FourBytesLittleE()
    {
        DatableConfig.endianess = .little
        let correct = Int32(0x11111111)
        let data = Data(array: [0x11, 0x11, 0x11, 0x11])
        let result = data.int32!
          
        XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int32, result)
    }
    
    func testInt32FailFiveBytesLittleE()
    {
        DatableConfig.endianess = .little
        let data = Data(array: [0x11, 0x11, 0x11, 0x11, 0x11])
        let result = data.int32
        XCTAssertNil(result)
    }
    
    func testInt32FailZeroBytesBigE()
    {
        DatableConfig.endianess = .big
        let data = Data()
        let result = data.int32
        XCTAssertNil(result)
    }
    
    func testInt32OneByteBigeE()
    {
        DatableConfig.endianess = .big
        let correct = Int32(0x11)
        let data = Data(array: [0x11])
        let result = data.int32!
          
        XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int32, result)
    }
    
    func testInt32TwoByteBigE()
    {
        DatableConfig.endianess = .big
        let correct = Int32(0x1111)
        let data = Data(array: [0x11, 0x11])
        let result = data.int32!
          
        XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int32, result)
    }
    
    func testInt32FourBytesBigE()
    {
        DatableConfig.endianess = .big
        let correct = Int32(0x11111111)
        let data = Data(array: [0x11, 0x11, 0x11, 0x11])
        let result = data.int32!
          
        XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int32, result)
    }
    
    func testInt32FailFiveBytesBigE()
    {
        DatableConfig.endianess = .big
        let data = Data(array: [0x11, 0x11, 0x11, 0x11, 0x11])
        let result = data.int32
        XCTAssertNil(result)
    }
    
    // MARK: Int16
    
    func testStringInt16able()
    {
        let correctString = "5"
        let correctnumber: Int16 = 5
        let stringFromNumber = String(int16: correctnumber)
        let numberFromString = stringFromNumber.int16
        
        XCTAssertEqual(correctString, stringFromNumber)
        XCTAssertEqual(correctnumber, numberFromString)
    }
    
    func testInt16Stringable()
    {
        let numberString = "5"
        let number: Int16 = 5
        let numberFromString = Int16(string: numberString)
        let stringFromNumber = numberFromString.string
        
        XCTAssertEqual(number, numberFromString)
        XCTAssertEqual(numberString, stringFromNumber)
    }
    
    func testDataInt16able()
    {
        let correctNumber = Int16(0x11)
        let dataFromNumber = Data(int16: correctNumber)!
        
        XCTAssertEqual(dataFromNumber, correctNumber.data)
        
        let numberFromData = dataFromNumber.int16
        XCTAssertEqual(numberFromData, correctNumber)
    }
    
    func testInt16FailZeroBytesLittleE()
    {
        DatableConfig.endianess = .little
        let data = Data()
        let result = data.int16
        XCTAssertNil(result)
    }
    
    func testInt16OneByteLittleE()
    {
       DatableConfig.endianess = .little
       let correct = Int16(0x08)
       let data = Data(array: [0x08])
       let result = data.int16!
       
       XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int16, result)
    }
    
    func testInt16TwoBytesLittleE()
    {
        DatableConfig.endianess = .little
        let correct = Int16(0x1111)
        let data = Data(array: [0x11, 0x11])
        let result = data.int16!
          
        XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int16, result)
    }
    
    func testInt16FailFiveBytesLittleE()
    {
        DatableConfig.endianess = .little
        let data = Data(array: [0x11, 0x11, 0x11, 0x11, 0x11])
        let result = data.int16
        XCTAssertNil(result)
    }
    
    func testInt16FailZeroBytesBigE()
    {
        DatableConfig.endianess = .big
        let data = Data()
        let result = data.int16
        XCTAssertNil(result)
    }
    
    func testInt16OneByteBigE()
    {
       DatableConfig.endianess = .big
       let correct = Int16(0x08)
       let data = Data(array: [0x08])
       let result = data.int16!
       
       XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int16, result)
    }
    
    func testInt16TwoBytesBigE()
    {
        DatableConfig.endianess = .big
        let correct = Int16(0x1111)
        let data = Data(array: [0x11, 0x11])
        let result = data.int16!
          
        XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int16, result)
    }
    
    func testInt16FailFiveBytesBigE()
    {
        DatableConfig.endianess = .big
        let data = Data(array: [0x11, 0x11, 0x11, 0x11, 0x11])
        let result = data.int16
        XCTAssertNil(result)
    }
    
    // MARK: Int8
    
    func testStringInt8able()
    {
        let correctString = "5"
        let correctnumber: Int8 = 5
        let stringFromNumber = String(int8: correctnumber)
        let numberFromString = stringFromNumber.int8
        
        XCTAssertEqual(correctString, stringFromNumber)
        XCTAssertEqual(correctnumber, numberFromString)
    }
    
    func testInt8Stringable()
    {
        let numberString = "5"
        let number: Int8 = 5
        let numberFromString = Int8(string: numberString)
        let stringFromNumber = numberFromString.string
        
        XCTAssertEqual(number, numberFromString)
        XCTAssertEqual(numberString, stringFromNumber)
    }
    
    func testDataInt8able()
    {
        let correctNumber = Int8(0x11)
        let dataFromNumber = Data(int8: correctNumber)!
        
        XCTAssertEqual(dataFromNumber, correctNumber.data)
        
        let numberFromData = dataFromNumber.int8!
        XCTAssertEqual(numberFromData, correctNumber)
    }
    
    func testInt8FailZeroBytesLittleE()
    {
        DatableConfig.endianess = .little
        let data = Data()
        let result = data.int8
        XCTAssertNil(result)
    }
    
    func testInt8OneByteLittleE()
    {
       DatableConfig.endianess = .little
       let correct = Int8(0x08)
       let data = Data(array: [0x08])
       let result = data.int8!
       
       XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int8, result)
    }
    
    func testInt8FailTwoBytesLittleE()
    {
        DatableConfig.endianess = .little
        let data = Data(array: [0x11, 0x11])
        let result = data.int8
        XCTAssertNil(result)
    }
    
    func testInt8FailZeroBytesBigE()
    {
        DatableConfig.endianess = .big
        let data = Data()
        let result = data.int8
        XCTAssertNil(result)
    }
    
    func testInt8OneByteBigE()
    {
       DatableConfig.endianess = .big
       let correct = Int8(0x08)
       let data = Data(array: [0x08])
       let result = data.int8!
       
       XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int8, result)
    }
    
    func testInt8FailTwoBytesBigE()
    {
        DatableConfig.endianess = .big
        let data = Data(array: [0x11, 0x11])
        let result = data.int8
        XCTAssertNil(result)
    }
    
    func testDatable_endianness1()
    {
       DatableConfig.endianess = .little
       
       let correct = Int(0x08)
       
       let data = Data(array: [0x08])
       
       let result = data.int!
       
       XCTAssertEqual(correct, result)
        
        let intData = result.data
        XCTAssertEqual(intData.int, result)
    }
    
    func testCSVable()
    {
        let correct: String = "1,2,3"
        let input: [UInt8] = [1, 2, 3]
        let result: String = input.csv
        
        XCTAssertEqual(result, correct)
    }

    func testMabyeNetworkData259()
    {
        let correct = Data([0, 0, 0, 0, 0, 0, 1, 3])
        let value: UInt64 = 259

        let maybeResult = value.maybeNetworkData
        XCTAssertNotNil(maybeResult)
        guard let result = maybeResult else
        {
            XCTFail()
            return
        }

        XCTAssertEqual(result, correct)

        let newValue = UInt64(maybeNetworkData: result)
        XCTAssertEqual(newValue, value)
    }
}
