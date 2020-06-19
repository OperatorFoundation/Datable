//
//  Datable+Int.swift
//  DatablePackageDescription
//
//  Created by Brandon Wiley on 1/5/18.
//

import Foundation

extension Int: MaybeDatable
{
    public init?(data: Data)
    {
        // Assert that we are running on a 64-bit platform
        assert(Int.max == Int64.max)
        
        guard let int64 = Int64(data: data) else {return nil}
        let value = Int(int64)
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

extension Int64: MaybeDatable
{
    public init?(data: Data)
    {
        // Assert that we are running on a little-endian platform
        assert(DatableConfig.localEndianness == .little)
        
        guard let value = padAndConvert(data: data, targetType: Int64.self) else
        {
            return nil
        }
                                        
        self = value
    }
    
    public var data: Data {
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

extension Int32: MaybeDatable
{
    public init?(data: Data)
    {
        // Assert that we are running on a little-endian platform
        assert(DatableConfig.localEndianness == .little)
        
        guard let value = padAndConvert(data: data, targetType: Int32.self) else
        {
            return nil
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

extension Int16: MaybeDatable
{
    public init?(data: Data)
    {
        // Assert that we are running on a little-endian platform
        assert(DatableConfig.localEndianness == .little)
        
        guard let value = padAndConvert(data: data, targetType: Int16.self) else
        {
            return nil
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

extension Int8: MaybeDatable
{
    public init?(data: Data)
    {
        guard data.count == 1 else
        {
            return nil
        }
        
        let input = data[0]
        
        let value = Int8(input)
        self = value
    }
    
    public var data: Data
    {
        let value = self
        return withUnsafeBytes(of: value) { Data($0) }
    }
}

func padAndConvert<T>(data: Data, targetType: T.Type) -> T? where T: FixedWidthInteger
{
    guard let paddedData = pad(data: data, targetType: targetType) else {return nil}
 
    var value: T

    // Convert to a number
    value = paddedData.withUnsafeBytes{ $0.load(as: T.self) }
            
    // Fix the endianess if config and system don't match to make sure our number is correct
    if DatableConfig.endianess != DatableConfig.localEndianness
    {
        value = value.byteSwapped
    }
        
    return value
}

func pad<T>(data: Data, targetType: T.Type) -> Data? where T: FixedWidthInteger
{
    // Assert that we are running on a little-endian platform
    assert(DatableConfig.localEndianness == .little)
    
    guard let paddedData = padSigned(data: data, targetLength: T.bitWidth / 8) else
    {
        return nil
    }

    return paddedData
}

func padSigned(data: Data, targetLength: Int) -> Data?
{
    guard data.count > 0, data.count <= targetLength else
    {
        return nil
    }
    
    if data.count == targetLength
    {
        return data
    }
            
    var initialSignByteIndex: Int

    switch DatableConfig.endianess
    {
        case .big:
            initialSignByteIndex = 0
                            
        case .little:
            initialSignByteIndex = data.count - 1
    }
    
    let signNumber = Int8(bitPattern: data[initialSignByteIndex])
    guard signNumber >= 0 else
    {
        return nil
    }
    
    return padPositive(data: data, targetLength: targetLength)
}

func padPositive(data: Data, targetLength: Int) -> Data
{
    let missingByteCount = targetLength - data.count
    let padding = Data(repeating: 0, count: missingByteCount)
    
    var paddedData = data
    
    switch DatableConfig.endianess
    {
       case .big:
           paddedData.reverse()
           paddedData.append(padding)
           paddedData.reverse()
                           
       case .little:
           paddedData.append(padding)
    }
    
    return paddedData
}
