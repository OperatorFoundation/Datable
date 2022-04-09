//
//  UInt+MaybeNetworkDatable.swift
//  
//
//  Created by Joshua Clark on 9/9/21.
//

import Foundation



extension UInt: MaybeNetworkDatable
{
    public init?(maybeNetworkData: Data)
    {
        switch UInt.bitWidth {
            case 64:
                guard let result = UInt64(maybeNetworkData: maybeNetworkData) else {
                    return nil
                }
                self = UInt(result)
            case 32:
                guard let result = UInt32(maybeNetworkData: maybeNetworkData) else {
                    return nil
                }
                self = UInt(result)
            default:
                return nil
        }
    }
    
    public var maybeNetworkData: Data?
    {
        switch UInt.bitWidth {
            case 64:
                let result = UInt64(self)
                return result.maybeNetworkData
            case 32:
                let result = UInt32(self)
                return result.maybeNetworkData
            default:
                return nil
        }
    }
}

extension UInt8: MaybeNetworkDatable
{
    public init?(maybeNetworkData: Data)
    {
        guard maybeNetworkData.count == 1 else {
            print("Invalid data size for uint16 conversion")
            return nil
        }
        
        var number: UInt8 = 0
        number = UInt8(maybeNetworkData[0])
        
        self = number
    }
    
    public var maybeNetworkData: Data?
    {
        var data: Data = Data(repeating: 0, count: 1)
        let number = self
        
        data[0] = UInt8(number)
        
        return data
    }
}

extension UInt16: MaybeNetworkDatable
{
    public init?(maybeNetworkData: Data)
    {
        guard maybeNetworkData.count == 2 else {
            print("Invalid data size for uint16 conversion")
            return nil
        }
        
        var number: UInt16 = 0
        number = (UInt16(maybeNetworkData[0]) * 256) + UInt16(maybeNetworkData[1])
        
        self = number
    }
    
    public var maybeNetworkData: Data?
    {
        var data: Data = Data(repeating: 0, count: 2)
        let number = self
        
        data[0] = UInt8(number >> 8)
        data[1] = UInt8(number & 0x00FF)
        
        return data
    }
}

extension UInt32: MaybeNetworkDatable
{
    public init?(maybeNetworkData: Data)
    {
        let byteCount = UInt32.bitWidth / 8
        guard maybeNetworkData.count == byteCount else {
            print("Invalid data size for uint32 conversion")
            return nil
        }
        
        var number: UInt32 = 0
        for index in 0..<byteCount
        {
            number += UInt32(maybeNetworkData[index]) << (8*((byteCount-1)-index))
        }

        self = number
    }
    
    public var maybeNetworkData: Data?
    {
        let byteCount = 4
        var data: Data = Data(repeating: 0, count: byteCount)
        let number = self

        for index in 0..<byteCount
        {
            data[index] = UInt8((number << (8*index)) >> (8*(byteCount-1)))
        }

        return data
    }
}

extension UInt64: MaybeNetworkDatable
{
    public init?(maybeNetworkData: Data)
    {
        guard maybeNetworkData.count == 8 else {
            print("Invalid data size for uint64 conversion")
            return nil
        }
        
        var number: UInt64 = 0
        number = (UInt64(maybeNetworkData[0]) << (8*7))
               + (UInt64(maybeNetworkData[1]) << (8*6))
               + (UInt64(maybeNetworkData[2]) << (8*5))
               + (UInt64(maybeNetworkData[3]) << (8*4))
               + (UInt64(maybeNetworkData[4]) << (8*3))
               + (UInt64(maybeNetworkData[5]) << (8*2))
               + (UInt64(maybeNetworkData[6]) << (8*1))
               + (UInt64(maybeNetworkData[7]) << (8*0))
        
        self = number
    }
    
    public var maybeNetworkData: Data?
    {
        var data: Data = Data(repeating: 0, count: 8)

        let number: UInt64 = self

        data[0] = UInt8((number & 0xFF00000000000000) >> (8*7))
        data[1] = UInt8((number & 0x00FF000000000000) >> (8*6))
        data[2] = UInt8((number & 0x0000FF0000000000) >> (8*5))
        data[3] = UInt8((number & 0x000000FF00000000) >> (8*4))
        data[4] = UInt8((number & 0x00000000FF000000) >> (8*3))
        data[5] = UInt8((number & 0x0000000000FF0000) >> (8*2))
        data[6] = UInt8((number & 0x000000000000FF00) >> (8*1))
        data[7] = UInt8((number & 0x00000000000000FF) >> (8*0))

        return data
    }
}
