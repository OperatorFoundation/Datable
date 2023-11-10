//
//  Int+MaybeFloatable.swift
//
//
//  Created by Dr. Brandon Wiley on 11/10/23.
//

import Foundation

extension Int: Floatable
{
    public init?(float: Float)
    {
        guard float >= Float(Int.min), float <= Float(Int.max) else
        {
            return nil
        }

        self = Int(float)
    }

    public var float: Float?
    {
        return Float(self)
    }

    public init?(double: Double)
    {
        guard double >= Double(Int.min), double <= Double(Int.max) else
        {
            return nil
        }

        self = Int(double)
    }

    public var double: Double?
    {
        return Double(self)
    }
}

extension Int8: Floatable
{
    public init?(float: Float)
    {
        guard float >= Float(Int8.min), float <= Float(Int8.max) else
        {
            return nil
        }

        self = Int8(float)
    }

    public var float: Float?
    {
        return Float(self)
    }

    public init?(double: Double)
    {
        guard double >= Double(Int8.min), double <= Double(Int8.max) else
        {
            return nil
        }

        self = Int8(double)
    }

    public var double: Double?
    {
        return Double(self)
    }
}

extension Int16: Floatable
{
    public init?(float: Float)
    {
        guard float >= Float(Int16.min), float <= Float(Int16.max) else
        {
            return nil
        }

        self = Int16(float)
    }

    public var float: Float?
    {
        return Float(self)
    }

    public init?(double: Double)
    {
        guard double >= Double(Int16.min), double <= Double(Int16.max) else
        {
            return nil
        }

        self = Int16(double)
    }

    public var double: Double?
    {
        return Double(self)
    }
}

extension Int32: Floatable
{
    public init?(float: Float)
    {
        guard float >= Float(Int32.min), float <= Float(Int32.max) else
        {
            return nil
        }

        self = Int32(float)
    }

    public var float: Float?
    {
        return Float(self)
    }

    public init?(double: Double)
    {
        guard double >= Double(Int32.min), double <= Double(Int32.max) else
        {
            return nil
        }

        self = Int32(double)
    }

    public var double: Double?
    {
        return Double(self)
    }
}

extension Int64: Floatable
{
    public init?(float: Float)
    {
        guard float >= Float(Int64.min), float <= Float(Int64.max) else
        {
            return nil
        }

        self = Int64(float)
    }

    public var float: Float?
    {
        return Float(self)
    }

    public init?(double: Double)
    {
        guard double >= Double(Int64.min), double <= Double(Int64.max) else
        {
            return nil
        }

        self = Int64(double)
    }

    public var double: Double?
    {
        return Double(self)
    }
}

extension UInt: Floatable
{
    public init?(float: Float)
    {
        guard float >= Float(UInt.min), float <= Float(UInt.max) else
        {
            return nil
        }

        self = UInt(float)
    }

    public var float: Float?
    {
        return Float(self)
    }

    public init?(double: Double)
    {
        guard double >= Double(UInt.min), double <= Double(UInt.max) else
        {
            return nil
        }

        self = UInt(double)
    }

    public var double: Double?
    {
        return Double(self)
    }
}

extension UInt8: Floatable
{
    public init?(float: Float)
    {
        guard float >= Float(UInt8.min), float <= Float(UInt8.max) else
        {
            return nil
        }

        self = UInt8(float)
    }

    public var float: Float?
    {
        return Float(self)
    }

    public init?(double: Double)
    {
        guard double >= Double(UInt8.min), double <= Double(UInt8.max) else
        {
            return nil
        }

        self = UInt8(double)
    }

    public var double: Double?
    {
        return Double(self)
    }
}

extension UInt16: Floatable
{
    public init?(float: Float)
    {
        guard float >= Float(UInt16.min), float <= Float(UInt16.max) else
        {
            return nil
        }

        self = UInt16(float)
    }

    public var float: Float?
    {
        return Float(self)
    }

    public init?(double: Double)
    {
        guard double >= Double(UInt16.min), double <= Double(UInt16.max) else
        {
            return nil
        }

        self = UInt16(double)
    }

    public var double: Double?
    {
        return Double(self)
    }
}

extension UInt32: Floatable
{
    public init?(float: Float)
    {
        guard float >= Float(UInt32.min), float <= Float(UInt32.max) else
        {
            return nil
        }

        self = UInt32(float)
    }

    public var float: Float?
    {
        return Float(self)
    }

    public init?(double: Double)
    {
        guard double >= Double(UInt32.min), double <= Double(UInt32.max) else
        {
            return nil
        }

        self = UInt32(double)
    }

    public var double: Double?
    {
        return Double(self)
    }
}

extension UInt64: Floatable
{
    public init?(float: Float)
    {
        guard float >= Float(UInt64.min), float <= Float(UInt64.max) else
        {
            return nil
        }

        self = UInt64(float)
    }

    public var float: Float?
    {
        return Float(self)
    }

    public init?(double: Double)
    {
        guard double >= Double(UInt64.min), double <= Double(UInt64.max) else
        {
            return nil
        }

        self = UInt64(double)
    }

    public var double: Double?
    {
        return Double(self)
    }
}
