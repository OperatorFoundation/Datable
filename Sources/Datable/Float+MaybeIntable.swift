//
//  Float+MaybeIntable.swift
//
//
//  Created by Dr. Brandon Wiley on 11/10/23.
//

import Foundation

extension Float: MaybeIntable
{
    public init?(int: Int)
    {
        self = Float(int)
    }

    public var int: Int?
    {
        guard self >= Float(Int.min), self <= Float(Int.max) else
        {
            return nil
        }

        return Int(self)
    }

    public init?(int8: Int8)
    {
        self = Float(int8)
    }

    public var int8: Int8?
    {
        guard self >= Float(Int8.min), self <= Float(Int8.max) else
        {
            return nil
        }

        return Int8(self)
    }

    public init?(int16: Int16)
    {
        self = Float(int16)
    }

    public var int16: Int16?
    {
        guard self >= Float(Int16.min), self <= Float(Int16.max) else
        {
            return nil
        }

        return Int16(self)
    }

    public init?(int32: Int32)
    {
        self = Float(int32)
    }

    public var int32: Int32?
    {
        guard self >= Float(Int32.min), self <= Float(Int32.max) else
        {
            return nil
        }

        return Int32(self)
    }

    public init?(int64: Int64)
    {
        self = Float(int64)
    }

    public var int64: Int64?
    {
        guard self >= Float(Int64.min), self <= Float(Int64.max) else
        {
            return nil
        }

        return Int64(self)
    }

    public init?(uint: UInt)
    {
        self = Float(uint)
    }

    public var uint: UInt?
    {
        guard self >= Float(UInt.min), self <= Float(UInt.max) else
        {
            return nil
        }

        return UInt(self)
    }

    public init?(uint8: UInt8)
    {
        self = Float(uint8)
    }

    public var uint8: UInt8?
    {
        guard self >= Float(UInt8.min), self <= Float(UInt8.max) else
        {
            return nil
        }

        return UInt8(self)
    }

    public init?(uint16: UInt16)
    {
        self = Float(uint16)
    }

    public var uint16: UInt16?
    {
        guard self >= Float(UInt16.min), self <= Float(UInt16.max) else
        {
            return nil
        }

        return UInt16(self)
    }

    public init?(uint32: UInt32)
    {
        self = Float(uint32)
    }

    public var uint32: UInt32?
    {
        guard self >= Float(UInt32.min), self <= Float(UInt32.max) else
        {
            return nil
        }

        return UInt32(self)
    }

    public init?(uint64: UInt64)
    {
        self = Float(uint64)
    }

    public var uint64: UInt64?
    {
        guard self >= Float(UInt64.min), self <= Float(UInt64.max) else
        {
            return nil
        }

        return UInt64(self)
    }
}

extension Double: MaybeIntable
{
    public init?(int: Int)
    {
        self = Double(int)
    }

    public var int: Int?
    {
        guard self >= Double(Int.min), self <= Double(Int.max) else
        {
            return nil
        }

        return Int(self)
    }

    public init?(int8: Int8)
    {
        self = Double(int8)
    }

    public var int8: Int8?
    {
        guard self >= Double(Int8.min), self <= Double(Int8.max) else
        {
            return nil
        }

        return Int8(self)
    }

    public init?(int16: Int16)
    {
        self = Double(int16)
    }

    public var int16: Int16?
    {
        guard self >= Double(Int16.min), self <= Double(Int16.max) else
        {
            return nil
        }

        return Int16(self)
    }

    public init?(int32: Int32)
    {
        self = Double(int32)
    }

    public var int32: Int32?
    {
        guard self >= Double(Int32.min), self <= Double(Int32.max) else
        {
            return nil
        }

        return Int32(self)
    }

    public init?(int64: Int64)
    {
        self = Double(int64)
    }

    public var int64: Int64?
    {
        guard self >= Double(Int64.min), self <= Double(Int64.max) else
        {
            return nil
        }

        return Int64(self)
    }

    public init?(uint: UInt)
    {
        self = Double(uint)
    }

    public var uint: UInt?
    {
        guard self >= Double(UInt.min), self <= Double(UInt.max) else
        {
            return nil
        }

        return UInt(self)
    }

    public init?(uint8: UInt8)
    {
        self = Double(uint8)
    }

    public var uint8: UInt8?
    {
        guard self >= Double(UInt8.min), self <= Double(UInt8.max) else
        {
            return nil
        }

        return UInt8(self)
    }

    public init?(uint16: UInt16)
    {
        self = Double(uint16)
    }

    public var uint16: UInt16?
    {
        guard self >= Double(UInt16.min), self <= Double(UInt16.max) else
        {
            return nil
        }

        return UInt16(self)
    }

    public init?(uint32: UInt32)
    {
        self = Double(uint32)
    }

    public var uint32: UInt32?
    {
        guard self >= Double(UInt32.min), self <= Double(UInt32.max) else
        {
            return nil
        }

        return UInt32(self)
    }

    public init?(uint64: UInt64)
    {
        self = Double(uint64)
    }

    public var uint64: UInt64?
    {
        guard self >= Double(UInt64.min), self <= Double(UInt64.max) else
        {
            return nil
        }

        return UInt64(self)
    }
}
