//
//  UInt+MaybeNetworkDatable.swift
//  
//
//  Created by Joshua Clark on 9/9/21.
//

import Foundation

extension UInt16: MaybeNetworkDatable
{
    public init?(maybeNetworkData: Data)
    {
        guard maybeNetworkData.count == 2 else {
            print("Invalid data size for uint16 conversion")
            return nil
        }
        
        var number: UInt16 = 0
        number = UInt16(maybeNetworkData[1]) + (UInt16(maybeNetworkData[0]) * 256)
        
        self = number
    }
    
    public var maybeNetworkData: Data?
    {
        var data: Data = Data(repeating: 0, count: 2)
        let number = self
        
        data[0] = UInt8(number >> 8)
        data[1] = UInt8(number & 0x0F)
        
        return data
    }
}
