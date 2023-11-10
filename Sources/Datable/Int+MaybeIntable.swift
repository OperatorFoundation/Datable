//
//  Int+MaybeIntable.swift
//
//
//  Created by Dr. Brandon Wiley on 11/10/23.
//

import Foundation

extension Int: MaybeIntable
{
    public init?(int: Int)
    {
        self = int
    }

    public var int: Int?
    {
        return self
    }

    public init?(int8: Int8)
    {
        guard let int = int8.int else
        {
            return nil
        }

        self = int
    }

    public var int8: Int8?
    {
        guard self >= Int8.min, self <= Int8.max else
        {
            return nil
        }

        return Int8(self)
    }

    public init?(int16: Int16)
    {
        guard let int = int16.int else
        {
            return nil
        }

        self = int
    }

    public var int16: Int16?
    {
        guard self >= Int16.min, self <= Int16.max else
        {
            return nil
        }

        return Int16(self)
    }

    public init?(int32: Int32)
    {
        guard let int = int32.int else
        {
            return nil
        }

        self = int
    }

    public var int32: Int32?
    {
        guard self >= Int32.min, self <= Int32.max else
        {
            return nil
        }

        return Int32(self)
    }

    public init?(int64: Int64)
    {
        guard let int = int64.int else
        {
            return nil
        }

        self = int
    }

    public var int64: Int64?
    {
        guard self >= Int64.min, self <= Int64.max else
        {
            return nil
        }

        return Int64(self)
    }

    public init?(uint: UInt)
    {
        guard let uint = uint.int else
        {
            return nil
        }

        self = uint
    }

    public var uint: UInt?
    {
        guard self >= UInt.min, self <= UInt.max else
        {
            return nil
        }

        return UInt(self)
    }

    public init?(uint8: UInt8)
    {
        guard let int = uint8.int else
        {
            return nil
        }

        self = int
    }

    public var uint8: UInt8?
    {
        guard self >= UInt8.min, self <= UInt8.max else
        {
            return nil
        }

        return UInt8(self)
    }

    public init?(uint16: UInt16)
    {
        guard let int = uint16.int else
        {
            return nil
        }

        self = int
    }

    public var uint16: UInt16?
    {
        guard self >= UInt16.min, self <= UInt16.max else
        {
            return nil
        }

        return UInt16(self)
    }

    public init?(uint32: UInt32)
    {
        guard let uint = uint32.int else
        {
            return nil
        }

        self = uint
    }

    public var uint32: UInt32?
    {
        guard self >= UInt32.min, self <= UInt32.max else
        {
            return nil
        }

        return UInt32(self)
    }

    public init?(uint64: UInt64)
    {
        guard let int = uint64.int else
        {
            return nil
        }

        self = int
    }

    public var uint64: UInt64?
    {
        guard self >= UInt64.min, self <= UInt64.max else
        {
            return nil
        }

        return UInt64(self)
    }
}

extension Int8: MaybeIntable
{
    public init?(int: Int)
    {
        guard let int8 = int.int8 else
        {
            return nil
        }

        self = int8
    }

    public var int: Int?
    {
        guard self >= Int.min, self <= Int.max else
        {
            return nil
        }

        return Int(self)
    }

    public init?(int8: Int8)
    {
        self = int8
    }

    public var int8: Int8?
    {
        return self
    }

    public init?(int16: Int16)
    {
        guard let int = int16.int8 else
        {
            return nil
        }

        self = int
    }

    public var int16: Int16?
    {
        guard self >= Int16.min, self <= Int16.max else
        {
            return nil
        }

        return Int16(self)
    }

    public init?(int32: Int32)
    {
        guard let int = int32.int8 else
        {
            return nil
        }

        self = int
    }

    public var int32: Int32?
    {
        guard self >= Int32.min, self <= Int32.max else
        {
            return nil
        }

        return Int32(self)
    }

    public init?(int64: Int64)
    {
        guard let int = int64.int8 else
        {
            return nil
        }

        self = int
    }

    public var int64: Int64?
    {
        guard self >= Int64.min, self <= Int64.max else
        {
            return nil
        }

        return Int64(self)
    }

    public init?(uint: UInt)
    {
        guard let uint = uint.int8 else
        {
            return nil
        }

        self = uint
    }

    public var uint: UInt?
    {
        guard self >= UInt.min, self <= UInt.max else
        {
            return nil
        }

        return UInt(self)
    }

    public init?(uint8: UInt8)
    {
        guard let int8 = uint8.int8 else
        {
            return nil
        }

        self = int8
    }

    public var uint8: UInt8?
    {
        guard self >= UInt8.min, self <= UInt8.max else
        {
            return nil
        }

        return UInt8(self)
    }

    public init?(uint16: UInt16)
    {
        guard let int16 = uint16.int8 else
        {
            return nil
        }

        self = int16
    }

    public var uint16: UInt16?
    {
        guard self >= UInt16.min, self <= UInt16.max else
        {
            return nil
        }

        return UInt16(self)
    }

    public init?(uint32: UInt32)
    {
        guard let int8 = uint32.int8 else
        {
            return nil
        }

        self = int8
    }

    public var uint32: UInt32?
    {
        guard self >= UInt32.min, self <= UInt32.max else
        {
            return nil
        }

        return UInt32(self)
    }

    public init?(uint64: UInt64)
    {
        guard let int8 = uint64.int8 else
        {
            return nil
        }

        self = int8
    }

    public var uint64: UInt64?
    {
        guard self >= UInt64.min, self <= UInt64.max else
        {
            return nil
        }

        return UInt64(self)
    }
}

extension Int16: MaybeIntable
{
    public init?(int: Int)
    {
        guard let int16 = int.int16 else
        {
            return nil
        }

        self = int16
    }

    public var int: Int?
    {
        guard self >= Int.min, self <= Int.max else
        {
            return nil
        }

        return Int(self)
    }

    public init?(int8: Int8)
    {
        guard let int16 = int8.int16 else
        {
            return nil
        }

        self = int16
    }

    public var int8: Int8?
    {
        guard self >= Int8.min, self <= Int8.max else
        {
            return nil
        }

        return Int8(self)
    }

    public init?(int16: Int16)
    {
        guard let int = int16.int16 else
        {
            return nil
        }

        self = int
    }

    public var int16: Int16?
    {
        guard self >= Int16.min, self <= Int16.max else
        {
            return nil
        }

        return Int16(self)
    }

    public init?(int32: Int32)
    {
        guard let int = int32.int16 else
        {
            return nil
        }

        self = int
    }

    public var int32: Int32?
    {
        guard self >= Int32.min, self <= Int32.max else
        {
            return nil
        }

        return Int32(self)
    }

    public init?(int64: Int64)
    {
        guard let int = int64.int16 else
        {
            return nil
        }

        self = int
    }

    public var int64: Int64?
    {
        guard self >= Int64.min, self <= Int64.max else
        {
            return nil
        }

        return Int64(self)
    }

    public init?(uint: UInt)
    {
        guard let uint = uint.int16 else
        {
            return nil
        }

        self = uint
    }

    public var uint: UInt?
    {
        guard self >= UInt.min, self <= UInt.max else
        {
            return nil
        }

        return UInt(self)
    }

    public init?(uint8: UInt8)
    {
        guard let int16 = uint8.int16 else
        {
            return nil
        }

        self = int16
    }

    public var uint8: UInt8?
    {
        guard self >= UInt8.min, self <= UInt8.max else
        {
            return nil
        }

        return UInt8(self)
    }

    public init?(uint16: UInt16)
    {
        guard let int16 = uint16.int16 else
        {
            return nil
        }

        self = int16
    }

    public var uint16: UInt16?
    {
        guard self >= UInt16.min, self <= UInt16.max else
        {
            return nil
        }

        return UInt16(self)
    }

    public init?(uint32: UInt32)
    {
        guard let int16 = uint32.int16 else
        {
            return nil
        }

        self = int16
    }

    public var uint32: UInt32?
    {
        guard self >= UInt32.min, self <= UInt32.max else
        {
            return nil
        }

        return UInt32(self)
    }

    public init?(uint64: UInt64)
    {
        guard let int16 = uint64.int16 else
        {
            return nil
        }

        self = int16
    }

    public var uint64: UInt64?
    {
        guard self >= UInt64.min, self <= UInt64.max else
        {
            return nil
        }

        return UInt64(self)
    }
}

extension Int32: MaybeIntable
{
    public init?(int: Int)
    {
        guard let int32 = int.int32 else
        {
            return nil
        }

        self = int32
    }

    public var int: Int?
    {
        guard self >= Int.min, self <= Int.max else
        {
            return nil
        }

        return Int(self)
    }

    public init?(int8: Int8)
    {
        guard let int32 = int8.int32 else
        {
            return nil
        }

        self = int32
    }

    public var int8: Int8?
    {
        guard self >= Int8.min, self <= Int8.max else
        {
            return nil
        }

        return Int8(self)
    }

    public init?(int16: Int16)
    {
        guard let int = int16.int32 else
        {
            return nil
        }

        self = int
    }

    public var int16: Int16?
    {
        guard self >= Int16.min, self <= Int16.max else
        {
            return nil
        }

        return Int16(self)
    }

    public init?(int32: Int32)
    {
        self = int32
    }

    public var int32: Int32?
    {
        return self
    }

    public init?(int64: Int64)
    {
        guard let int = int64.int32 else
        {
            return nil
        }

        self = int
    }

    public var int64: Int64?
    {
        guard self >= Int64.min, self <= Int64.max else
        {
            return nil
        }

        return Int64(self)
    }

    public init?(uint: UInt)
    {
        guard let uint = uint.int32 else
        {
            return nil
        }

        self = uint
    }

    public var uint: UInt?
    {
        guard self >= UInt.min, self <= UInt.max else
        {
            return nil
        }

        return UInt(self)
    }

    public init?(uint8: UInt8)
    {
        guard let int32 = uint8.int32 else
        {
            return nil
        }

        self = int32
    }

    public var uint8: UInt8?
    {
        guard self >= UInt8.min, self <= UInt8.max else
        {
            return nil
        }

        return UInt8(self)
    }

    public init?(uint16: UInt16)
    {
        guard let int32 = uint16.int32 else
        {
            return nil
        }

        self = int32
    }

    public var uint16: UInt16?
    {
        guard self >= UInt16.min, self <= UInt16.max else
        {
            return nil
        }

        return UInt16(self)
    }

    public init?(uint32: UInt32)
    {
        guard let int32 = uint32.int32 else
        {
            return nil
        }

        self = int32
    }

    public var uint32: UInt32?
    {
        guard self >= UInt32.min, self <= UInt32.max else
        {
            return nil
        }

        return UInt32(self)
    }

    public init?(uint64: UInt64)
    {
        guard let int = uint64.int32 else
        {
            return nil
        }

        self = int
    }

    public var uint64: UInt64?
    {
        guard self >= UInt64.min, self <= UInt64.max else
        {
            return nil
        }

        return UInt64(self)
    }
}

extension Int64: MaybeIntable
{
    public init?(int: Int)
    {
        guard let int64 = int.int64 else
        {
            return nil
        }

        self = int64
    }

    public var int: Int?
    {
        guard self >= Int.min, self <= Int.max else
        {
            return nil
        }

        return Int(self)
    }

    public init?(int8: Int8)
    {
        guard let int = int8.int64 else
        {
            return nil
        }

        self = int
    }

    public var int8: Int8?
    {
        guard self >= Int8.min, self <= Int8.max else
        {
            return nil
        }

        return Int8(self)
    }

    public init?(int16: Int16)
    {
        guard let int = int16.int64 else
        {
            return nil
        }

        self = int
    }

    public var int16: Int16?
    {
        guard self >= Int16.min, self <= Int16.max else
        {
            return nil
        }

        return Int16(self)
    }

    public init?(int32: Int32)
    {
        guard let int = int32.int64 else
        {
            return nil
        }

        self = int
    }

    public var int32: Int32?
    {
        guard self >= Int32.min, self <= Int32.max else
        {
            return nil
        }

        return Int32(self)
    }

    public init?(int64: Int64)
    {
        guard let int = int64.int64 else
        {
            return nil
        }

        self = int
    }

    public var int64: Int64?
    {
        guard self >= Int64.min, self <= Int64.max else
        {
            return nil
        }

        return Int64(self)
    }

    public init?(uint: UInt)
    {
        guard let int64 = uint.int64 else
        {
            return nil
        }

        self = int64
    }

    public var uint: UInt?
    {
        guard self >= UInt.min, self <= UInt.max else
        {
            return nil
        }

        return UInt(self)
    }

    public init?(uint8: UInt8)
    {
        guard let int64 = uint8.int64 else
        {
            return nil
        }

        self = int64
    }

    public var uint8: UInt8?
    {
        guard self >= UInt8.min, self <= UInt8.max else
        {
            return nil
        }

        return UInt8(self)
    }

    public init?(uint16: UInt16)
    {
        guard let int64 = uint16.int64 else
        {
            return nil
        }

        self = int64
    }

    public var uint16: UInt16?
    {
        guard self >= UInt16.min, self <= UInt16.max else
        {
            return nil
        }

        return UInt16(self)
    }

    public init?(uint32: UInt32)
    {
        guard let int64 = uint32.int64 else
        {
            return nil
        }

        self = int64
    }

    public var uint32: UInt32?
    {
        guard self >= UInt32.min, self <= UInt32.max else
        {
            return nil
        }

        return UInt32(self)
    }

    public init?(uint64: UInt64)
    {
        guard let int64 = uint64.int64 else
        {
            return nil
        }

        self = int64
    }

    public var uint64: UInt64?
    {
        guard self >= UInt64.min, self <= UInt64.max else
        {
            return nil
        }

        return UInt64(self)
    }
}

extension UInt: MaybeIntable
{
    public init?(int: Int)
    {
        guard let uint = int.uint else
        {
            return nil
        }

        self = uint
    }

    public var int: Int?
    {
        guard self >= Int.min, self <= Int.max else
        {
            return nil
        }

        return Int(self)
    }

    public init?(int8: Int8)
    {
        guard let int = int8.uint else
        {
            return nil
        }

        self = int
    }

    public var int8: Int8?
    {
        guard self >= Int8.min, self <= Int8.max else
        {
            return nil
        }

        return Int8(self)
    }

    public init?(int16: Int16)
    {
        guard let int = int16.uint else
        {
            return nil
        }

        self = int
    }

    public var int16: Int16?
    {
        guard self >= Int16.min, self <= Int16.max else
        {
            return nil
        }

        return Int16(self)
    }

    public init?(int32: Int32)
    {
        guard let int = int32.uint else
        {
            return nil
        }

        self = int
    }

    public var int32: Int32?
    {
        guard self >= Int32.min, self <= Int32.max else
        {
            return nil
        }

        return Int32(self)
    }

    public init?(int64: Int64)
    {
        guard let int = int64.uint else
        {
            return nil
        }

        self = int
    }

    public var int64: Int64?
    {
        guard self >= Int64.min, self <= Int64.max else
        {
            return nil
        }

        return Int64(self)
    }

    public init?(uint: UInt)
    {
        guard let uint = uint.uint else
        {
            return nil
        }

        self = uint
    }

    public var uint: UInt?
    {
        guard self >= UInt.min, self <= UInt.max else
        {
            return nil
        }

        return UInt(self)
    }

    public init?(uint8: UInt8)
    {
        guard let uint = uint8.uint else
        {
            return nil
        }

        self = uint
    }

    public var uint8: UInt8?
    {
        guard self >= UInt8.min, self <= UInt8.max else
        {
            return nil
        }

        return UInt8(self)
    }

    public init?(uint16: UInt16)
    {
        guard let uint = uint16.uint else
        {
            return nil
        }

        self = uint
    }

    public var uint16: UInt16?
    {
        guard self >= UInt16.min, self <= UInt16.max else
        {
            return nil
        }

        return UInt16(self)
    }

    public init?(uint32: UInt32)
    {
        guard let uint = uint32.uint else
        {
            return nil
        }

        self = uint
    }

    public var uint32: UInt32?
    {
        guard self >= UInt32.min, self <= UInt32.max else
        {
            return nil
        }

        return UInt32(self)
    }

    public init?(uint64: UInt64)
    {
        guard let int = uint64.uint else
        {
            return nil
        }

        self = int
    }

    public var uint64: UInt64?
    {
        guard self >= UInt64.min, self <= UInt64.max else
        {
            return nil
        }

        return UInt64(self)
    }
}

extension UInt8: MaybeIntable
{
    public init?(int: Int)
    {
        guard let uint = int.uint8 else
        {
            return nil
        }

        self = uint
    }

    public var int: Int?
    {
        guard self >= Int.min, self <= Int.max else
        {
            return nil
        }

        return Int(self)
    }

    public init?(int8: Int8)
    {
        guard let int = int8.uint8 else
        {
            return nil
        }

        self = int
    }

    public var int8: Int8?
    {
        guard self >= Int8.min, self <= Int8.max else
        {
            return nil
        }

        return Int8(self)
    }

    public init?(int16: Int16)
    {
        guard let int = int16.uint8 else
        {
            return nil
        }

        self = int
    }

    public var int16: Int16?
    {
        guard self >= Int16.min, self <= Int16.max else
        {
            return nil
        }

        return Int16(self)
    }

    public init?(int32: Int32)
    {
        guard let int = int32.uint8 else
        {
            return nil
        }

        self = int
    }

    public var int32: Int32?
    {
        guard self >= Int32.min, self <= Int32.max else
        {
            return nil
        }

        return Int32(self)
    }

    public init?(int64: Int64)
    {
        guard let int = int64.uint8 else
        {
            return nil
        }

        self = int
    }

    public var int64: Int64?
    {
        guard self >= Int64.min, self <= Int64.max else
        {
            return nil
        }

        return Int64(self)
    }

    public init?(uint: UInt)
    {
        guard let uint = uint.uint8 else
        {
            return nil
        }

        self = uint
    }

    public var uint: UInt?
    {
        guard self >= UInt.min, self <= UInt.max else
        {
            return nil
        }

        return UInt(self)
    }

    public init?(uint8: UInt8)
    {
        self = uint8
    }

    public var uint8: UInt8?
    {
        return self
    }

    public init?(uint16: UInt16)
    {
        guard let uint8 = uint16.uint8 else
        {
            return nil
        }

        self = uint8
    }

    public var uint16: UInt16?
    {
        guard self >= UInt16.min, self <= UInt16.max else
        {
            return nil
        }

        return UInt16(self)
    }

    public init?(uint32: UInt32)
    {
        guard let uint8 = uint32.uint8 else
        {
            return nil
        }

        self = uint8
    }

    public var uint32: UInt32?
    {
        guard self >= UInt32.min, self <= UInt32.max else
        {
            return nil
        }

        return UInt32(self)
    }

    public init?(uint64: UInt64)
    {
        guard let int = uint64.uint8 else
        {
            return nil
        }

        self = int
    }

    public var uint64: UInt64?
    {
        guard self >= UInt64.min, self <= UInt64.max else
        {
            return nil
        }

        return UInt64(self)
    }
}

extension UInt16: MaybeIntable
{
    public init?(int: Int)
    {
        guard let uint = int.uint16 else
        {
            return nil
        }

        self = uint
    }

    public var int: Int?
    {
        guard self >= Int.min, self <= Int.max else
        {
            return nil
        }

        return Int(self)
    }

    public init?(int8: Int8)
    {
        guard let int = int8.uint16 else
        {
            return nil
        }

        self = int
    }

    public var int8: Int8?
    {
        guard self >= Int8.min, self <= Int8.max else
        {
            return nil
        }

        return Int8(self)
    }

    public init?(int16: Int16)
    {
        guard let int = int16.uint16 else
        {
            return nil
        }

        self = int
    }

    public var int16: Int16?
    {
        guard self >= Int16.min, self <= Int16.max else
        {
            return nil
        }

        return Int16(self)
    }

    public init?(int32: Int32)
    {
        guard let int = int32.uint16 else
        {
            return nil
        }

        self = int
    }

    public var int32: Int32?
    {
        guard self >= Int32.min, self <= Int32.max else
        {
            return nil
        }

        return Int32(self)
    }

    public init?(int64: Int64)
    {
        guard let int = int64.uint16 else
        {
            return nil
        }

        self = int
    }

    public var int64: Int64?
    {
        guard self >= Int64.min, self <= Int64.max else
        {
            return nil
        }

        return Int64(self)
    }

    public init?(uint: UInt)
    {
        guard let uint = uint.uint16 else
        {
            return nil
        }

        self = uint
    }

    public var uint: UInt?
    {
        guard self >= UInt.min, self <= UInt.max else
        {
            return nil
        }

        return UInt(self)
    }

    public init?(uint8: UInt8)
    {
        guard let uint16 = uint8.uint16 else
        {
            return nil
        }

        self = uint16
    }

    public var uint8: UInt8?
    {
        guard self >= UInt8.min, self <= UInt8.max else
        {
            return nil
        }

        return UInt8(self)
    }

    public init?(uint16: UInt16)
    {
        guard let uint16 = uint16.uint16 else
        {
            return nil
        }

        self = uint16
    }

    public var uint16: UInt16?
    {
        guard self >= UInt16.min, self <= UInt16.max else
        {
            return nil
        }

        return UInt16(self)
    }

    public init?(uint32: UInt32)
    {
        guard let uint16 = uint32.uint16 else
        {
            return nil
        }

        self = uint16
    }

    public var uint32: UInt32?
    {
        guard self >= UInt32.min, self <= UInt32.max else
        {
            return nil
        }

        return UInt32(self)
    }

    public init?(uint64: UInt64)
    {
        guard let int = uint64.uint16 else
        {
            return nil
        }

        self = int
    }

    public var uint64: UInt64?
    {
        guard self >= UInt64.min, self <= UInt64.max else
        {
            return nil
        }

        return UInt64(self)
    }
}

extension UInt32: MaybeIntable
{
    public init?(int: Int)
    {
        guard let uint = int.uint32 else
        {
            return nil
        }

        self = uint
    }

    public var int: Int?
    {
        guard self >= Int.min, self <= Int.max else
        {
            return nil
        }

        return Int(self)
    }

    public init?(int8: Int8)
    {
        guard let int = int8.uint32 else
        {
            return nil
        }

        self = int
    }

    public var int8: Int8?
    {
        guard self >= Int8.min, self <= Int8.max else
        {
            return nil
        }

        return Int8(self)
    }

    public init?(int16: Int16)
    {
        guard let int = int16.uint32 else
        {
            return nil
        }

        self = int
    }

    public var int16: Int16?
    {
        guard self >= Int16.min, self <= Int16.max else
        {
            return nil
        }

        return Int16(self)
    }

    public init?(int32: Int32)
    {
        guard let int = int32.uint32 else
        {
            return nil
        }

        self = int
    }

    public var int32: Int32?
    {
        guard self >= Int32.min, self <= Int32.max else
        {
            return nil
        }

        return Int32(self)
    }

    public init?(int64: Int64)
    {
        guard let int = int64.uint32 else
        {
            return nil
        }

        self = int
    }

    public var int64: Int64?
    {
        guard self >= Int64.min, self <= Int64.max else
        {
            return nil
        }

        return Int64(self)
    }

    public init?(uint: UInt)
    {
        guard let uint = uint.uint32 else
        {
            return nil
        }

        self = uint
    }

    public var uint: UInt?
    {
        guard self >= UInt.min, self <= UInt.max else
        {
            return nil
        }

        return UInt(self)
    }

    public init?(uint8: UInt8)
    {
        guard let uint32 = uint8.uint32 else
        {
            return nil
        }

        self = uint32
    }

    public var uint8: UInt8?
    {
        guard self >= UInt8.min, self <= UInt8.max else
        {
            return nil
        }

        return UInt8(self)
    }

    public init?(uint16: UInt16)
    {
        guard let uint32 = uint16.uint32 else
        {
            return nil
        }

        self = uint32
    }

    public var uint16: UInt16?
    {
        guard self >= UInt16.min, self <= UInt16.max else
        {
            return nil
        }

        return UInt16(self)
    }

    public init?(uint32: UInt32)
    {
        self = uint32
    }

    public var uint32: UInt32?
    {
        return self
    }

    public init?(uint64: UInt64)
    {
        guard let int = uint64.uint32 else
        {
            return nil
        }

        self = int
    }

    public var uint64: UInt64?
    {
        guard self >= UInt64.min, self <= UInt64.max else
        {
            return nil
        }

        return UInt64(self)
    }
}

extension UInt64: MaybeIntable
{
    public init?(int: Int)
    {
        guard let uint = int.uint64 else
        {
            return nil
        }

        self = uint
    }

    public var int: Int?
    {
        guard self >= Int.min, self <= Int.max else
        {
            return nil
        }

        return Int(self)
    }

    public init?(int8: Int8)
    {
        guard let int = int8.uint64 else
        {
            return nil
        }

        self = int
    }

    public var int8: Int8?
    {
        guard self >= Int8.min, self <= Int8.max else
        {
            return nil
        }

        return Int8(self)
    }

    public init?(int16: Int16)
    {
        guard let int = int16.uint64 else
        {
            return nil
        }

        self = int
    }

    public var int16: Int16?
    {
        guard self >= Int16.min, self <= Int16.max else
        {
            return nil
        }

        return Int16(self)
    }

    public init?(int32: Int32)
    {
        guard let int = int32.uint64 else
        {
            return nil
        }

        self = int
    }

    public var int32: Int32?
    {
        guard self >= Int32.min, self <= Int32.max else
        {
            return nil
        }

        return Int32(self)
    }

    public init?(int64: Int64)
    {
        guard let int = int64.uint64 else
        {
            return nil
        }

        self = int
    }

    public var int64: Int64?
    {
        guard self >= Int64.min, self <= Int64.max else
        {
            return nil
        }

        return Int64(self)
    }

    public init?(uint: UInt)
    {
        guard let uint = uint.uint64 else
        {
            return nil
        }

        self = uint
    }

    public var uint: UInt?
    {
        guard self >= UInt.min, self <= UInt.max else
        {
            return nil
        }

        return UInt(self)
    }

    public init?(uint8: UInt8)
    {
        guard let uint8 = uint8.uint64 else
        {
            return nil
        }

        self = uint8
    }

    public var uint8: UInt8?
    {
        guard self >= UInt8.min, self <= UInt8.max else
        {
            return nil
        }

        return UInt8(self)
    }

    public init?(uint16: UInt16)
    {
        guard let uint16 = uint16.uint64 else
        {
            return nil
        }

        self = uint16
    }

    public var uint16: UInt16?
    {
        guard self >= UInt16.min, self <= UInt16.max else
        {
            return nil
        }

        return UInt16(self)
    }

    public init?(uint32: UInt32)
    {
        guard let uint32 = uint32.uint64 else
        {
            return nil
        }

        self = uint32
    }

    public var uint32: UInt32?
    {
        guard self >= UInt32.min, self <= UInt32.max else
        {
            return nil
        }

        return UInt32(self)
    }

    public init?(uint64: UInt64)
    {
        self = uint64
    }

    public var uint64: UInt64?
    {
        return self
    }
}
