//
//  Datable+Int.swift
//  DatablePackageDescription
//
//  Created by Brandon Wiley on 1/5/18.
//

import Foundation

extension Int: Datable
{
    public init(data: Data)
    {
        let int64 = Int64(data: data)
        
        // Fixme: This should be a failable Initializer
        guard int64 <= Int.max
        else
        {
            self = 0
            print("This number is too large to be converted to a UInt32")
            return
        }
        
        let value = Int(int64)
        self.init(value)
    }
    
    public var data: Data {
        get {
            var value = self

            if DatableConfig.endianess != DatableConfig.localEndianness {
                switch DatableConfig.localEndianness {
                    case .little:
                        value = value.bigEndian
                    case .big:
                        value = value.littleEndian
                }
            }
            
            return withUnsafeBytes(of: value) { Data($0) }
        }
    }
}

extension Int64: Datable
{
    public init(data: Data)
    {
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
            var padding = Data(repeating: 0, count: missingByteCount)
            
            // Lets make this 16 bits (2 bytes) instead of 8 (1 byte)
            // Make sure that we use endianess that matches the user's settings
            switch DatableConfig.endianess
            {
                // Add an empty byte to the left of the provided byte
                case .big:
                    let signNumber = Int8(bitPattern: data[0])

                    // This number is negative
                    if signNumber < 0
                    {
                        var mutableData = data
                        
                        // This mask replaces our leftmost bit (sign bit) with a 0
                        // and leaves the rest as they are
                        mutableData[0] = mutableData[0] & 0b01111111
                        
                        // our first byte's leftmost bit is the sign bit
                        // 1 = negative, 0 = positive
                        padding[0] = 0b10000000
                        paddedData = padding + mutableData
                    }
                    else
                    {
                        paddedData = padding + data
                    }
                
                // Add empty bytes to the right of the provided bytes
                case .little:
                    paddedData = data + padding
            }
        }
        else
        {
            paddedData = data
        }
        
        // Convert to a number
        var value = paddedData.withUnsafeBytes{ $0.load(as: Int64.self) }
        
        // Fix the endianess if config and system don't match to make sure our number is correct
        if DatableConfig.endianess != DatableConfig.localEndianness {
            switch DatableConfig.endianess {
            case .little:
                value = value.littleEndian
            case .big:
                value = value.bigEndian
            }
        }
        
        self.init(value)
    }
    
    public var data: Data {
        get {
            var value = self
            
            if DatableConfig.endianess != DatableConfig.localEndianness {
                switch DatableConfig.localEndianness {
                case .little:
                    value = value.bigEndian
                case .big:
                    value = value.littleEndian
                }
            }
            
            return withUnsafeBytes(of: value) { Data($0) }
        }
    }
}

extension Int32: Datable
{
    public init(data: Data)
    {
        let int64 = Int64(data: data)
        
        // Fixme: This should be a failable Initializer
        guard int64 <= Int32.max
        else
        {
            self = 0
            print("This number is too large to be converted to a Int32")
            return
        }
        
        let value = Int32(int64)
        self.init(value)
    }
    
    public var data: Data
    {
        get
        {
            var value = self
            
            if DatableConfig.endianess != DatableConfig.localEndianness
            {
                switch DatableConfig.localEndianness
                {
                case .little:
                    value = value.bigEndian
                case .big:
                    value = value.littleEndian
                }
            }
            
            return withUnsafeBytes(of: value) { Data($0) }
        }
    }
}

extension Int16: Datable
{
    public init(data: Data)
    {
        let int64 = Int64(data: data)
        
        // Fixme: This should be a failable Initializer
        guard int64 <= Int16.max
        else
        {
            self = 0
            print("This number is too large to be converted to a Int16")
            return
        }
        
        let value = Int16(int64)
        self.init(value)
    }
    
    public var data: Data
    {
        get
        {
            var value = self
            
            if DatableConfig.endianess != DatableConfig.localEndianness
            {
                switch DatableConfig.localEndianness
                {
                case .little:
                    value = value.bigEndian
                case .big:
                    value = value.littleEndian
                }
            }
            
            return withUnsafeBytes(of: value) { Data($0) }
        }
    }
}

extension Int8: Datable
{
    public init(data: Data)
    {
        let int64 = Int64(data: data)
        
        // Fixme: This should be a failable Initializer
        guard int64 <= Int8.max
        else
        {
            self = 0
            print("This number is too large to be converted to a Int8")
            return
        }
        
        let value = Int8(int64)
        self.init(value)
    }
    
    public var data: Data {
        get {
            let value = self
            return withUnsafeBytes(of: value) { Data($0) }
        }
    }
}
