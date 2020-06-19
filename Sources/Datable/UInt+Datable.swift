//
//  Datable+UUInt.swift
//  DatablePackageDescription
//
//  Created by Brandon Wiley on 1/5/18.
//

import Foundation

extension UInt: Datable
{
    public init(data: Data)
    {
        // Assert that we are running on a 64-bit platform
        assert(UInt.max == UInt64.max)
        
        let uint64 = UInt64(data: data)
        let value = UInt(uint64)
        self = value
    }
    
    public var data: Data
    {
        // Assert that we are running on a little-endian platform
        assert(DatableConfig.localEndianness == .little)
        
        var value = self

        if DatableConfig.endianess != DatableConfig.localEndianness
        {
            value = value.byteSwapped
        }

        return withUnsafeBytes(of: value) { Data($0) }
    }
}

extension UInt64: Datable
{
    public init(data: Data)
    {
        // Assert that we are running on a little-endian platform
        assert(DatableConfig.localEndianness == .little)
        
        var paddedData: Data
        
        guard data.count > 0, data.count <= 8
        else
        {
            // Fixme: This initializer should be failable
            self = 0
            return
        }
        
        if data.count < 8
        {
            let missingByteCount = 8 - data.count
            let padding = Data(repeating: 0, count: missingByteCount)
            
            // Lets make this 16 bits (2 bytes) instead of 8 (1 byte)
            // Make sure that we use endianess that matches the user's settings
            switch DatableConfig.endianess
            {
                // Add an empty byte to the left of the provided byte
                case .big:
                    paddedData = padding + data
                // Add an empty byte to the right of the provided byte
                case .little:
                    paddedData = data + padding
            }
        }
        else
        {
            paddedData = data
        }
        
        // Convert to a number
        var value = paddedData.withUnsafeBytes{ $0.load(as: UInt64.self) }
        
        // Fix the endianess if config and system don't match to make sure our number is correct
        if DatableConfig.endianess != DatableConfig.localEndianness
        {
            value = value.byteSwapped
        }
        
        self = value
    }
    
    public var data: Data
    {
        // Assert that we are running on a little-endian platform
        assert(DatableConfig.localEndianness == .little)
        
        var value = self

        if DatableConfig.endianess != DatableConfig.localEndianness
        {
            value = value.byteSwapped
        }

        return withUnsafeBytes(of: value) { Data($0) }
    }
}

extension UInt32: Datable
{
    public init(data: Data)
    {
        let uint64 = UInt64(data: data)
        
        // Fixme: This should be a failable Initializer
        guard uint64 <= UInt32.max
        else
        {
            self = 0
            print("This number is too large to be converted to a UInt32")
            return
        }
        
        let value = UInt32(uint64)
        self.init(value)
    }
    
    public var data: Data
    {
        // Assert that we are running on a little-endian platform
        assert(DatableConfig.localEndianness == .little)
        
        var value = self

        if DatableConfig.endianess != DatableConfig.localEndianness
        {
            value = value.byteSwapped
        }

        return withUnsafeBytes(of: value) { Data($0) }
    }
}

extension UInt16: Datable
{
    public init(data: Data)
    {
        let uint64 = UInt64(data: data)
        
        // Fixme: This should be a failable Initializer
        guard uint64 <= UInt16.max
        else
        {
            self = 0
            print("This number is too large to be converted to a UInt16")
            return
        }
        
        let value = UInt16(uint64)
        self.init(value)
    }
    
    public var data: Data
    {
        // Assert that we are running on a little-endian platform
        assert(DatableConfig.localEndianness == .little)
        
        var value = self

        if DatableConfig.endianess != DatableConfig.localEndianness
        {
            value = value.byteSwapped
        }

        return withUnsafeBytes(of: value) { Data($0) }
    }
}

extension UInt8: Datable
{
    public init(data: Data)
    {
        let uint64 = UInt64(data: data)
        
        // Fixme: This should be a failable Initializer
        guard uint64 <= UInt8.max
        else
        {
            self = 0
            print("This number is too large to be converted to a UInt8")
            return
        }
        
        let value = UInt8(uint64)
        self.init(value)
    }
    
    public var data: Data
    {
        let value = self
        return withUnsafeBytes(of: value) { Data($0) }
    }
}

