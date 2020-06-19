//
//  Datable+Float.swift
//  Datable
//
//  Created by Adelita Schule on 1/19/18.
//

import Foundation

extension Float: MaybeDatable
{
    // Creates a Float from a Data containing the bitpattern for a Float
    public init?(data: Data)
    {
        guard data.count == 4 || data.count == 8 else
        {
            return nil
        }

        if data.count == 4
        {
            // We need a UInt32 with the correct bitpattern
            guard var uint32 = data.uint32 else {return nil}
            if DatableConfig.endianess != DatableConfig.localEndianness
            {
                // We swapped the endianness when converting to uint32, swap again to restore
                uint32 = uint32.byteSwapped
            }
            
            self = Float(bitPattern: uint32)
        }
        else
        {
            let doubleFloat = Double(data: data)!
            guard !doubleFloat.isNaN else
            {
                self = Float.nan
                return
            }
            
            let singleFloat = Float(doubleFloat)            
            self = singleFloat
        }
     }
    
    public var data: Data
    {
        get
        {
            var uint32 = self.bitPattern
            
            if DatableConfig.endianess != DatableConfig.localEndianness
            {
                // Our UInt32 has swapped endianness, swap back to restore.
                uint32 = uint32.byteSwapped
            }
            
            return uint32.data
        }
    }
}
