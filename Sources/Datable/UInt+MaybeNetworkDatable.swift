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
        guard maybeNetworkData.count == 4 else {
            print("Invalid data size for uint32 conversion")
            return nil
        }
        
        var number: UInt32 = 0
        number = (UInt32(maybeNetworkData[0]) * 256 * 256 * 256) + (UInt32(maybeNetworkData[1]) * 256 * 256) + (UInt32(maybeNetworkData[2]) * 256) + UInt32(maybeNetworkData[3])
        
        self = number
    }
    
    public var maybeNetworkData: Data?
    {
        var data: Data = Data(repeating: 0, count: 4)
        let number = self
        
        data[0] = UInt8(number >> 24)
        data[1] = UInt8((number >> 16) & 0x00FF0000)
        data[2] = UInt8((number >> 8) & 0x0000FF00)
        data[3] = UInt8(number & 0x000000FF)
        
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
        number = (UInt64(maybeNetworkData[0]) * 256 * 256 * 256 * 256 * 256 * 256 * 256) + (UInt64(maybeNetworkData[1]) * 256 * 256 * 256 * 256 * 256 * 256) + (UInt64(maybeNetworkData[2]) * 256 * 256 * 256 * 256 * 256) + (UInt64(maybeNetworkData[3]) * 256 * 256 * 256 * 256) + (UInt64(maybeNetworkData[4]) * 256 * 256 * 256) + (UInt64(maybeNetworkData[5]) * 256 * 256) + (UInt64(maybeNetworkData[6]) * 256) + UInt64(maybeNetworkData[7])
        
        self = number
    }
    
    public var maybeNetworkData: Data?
    {
        var data: Data = Data(repeating: 0, count: 8)
        let number = self
        
        data[0] = UInt8(number >> 56)
        data[1] = UInt8((number >> 48) & 0x00FF000000000000)
        data[2] = UInt8((number >> 40) & 0x0000FF0000000000)
        data[3] = UInt8((number >> 32) & 0x000000FF00000000)
        data[4] = UInt8((number >> 24) & 0x00000000FF000000)
        data[5] = UInt8((number >> 16) & 0x0000000000FF0000)
        data[6] = UInt8((number >> 8) & 0x000000000000FF00)
        data[7] = UInt8(number & 0x00000000000000FF)
        
        return data
    }
}
