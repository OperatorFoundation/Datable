//
//  Datable+Double.swift
//  Datable
//
//  Created by Adelita Schule on 1/22/18.
//

import Foundation

extension Double: MaybeDatable
{
    // Creates a Float from a Data containing the bitpattern for a Float
    public init?(data: Data)
    {
        guard data.count == 4 || data.count == 8 else
        {
            return nil
        }

        if data.count == 8
        {
            // We need a UInt32 with the correct bitpattern
            guard var uint64 = data.uint64 else {return nil}
            if DatableConfig.endianess != DatableConfig.localEndianness
            {
                // We swapped the endianness when converting to uint64, swap again to restore
                uint64 = uint64.byteSwapped
            }
            
            self = Double(bitPattern: uint64)
        }
        else
        {
            // This can't actually fail.
            let singleFloat = Float(data: data)!            
            self = Double(singleFloat)
        }
     }
    
    public var data: Data
    {
        get
        {
            var uint64 = self.bitPattern
            
            if DatableConfig.endianess != DatableConfig.localEndianness
            {
                // Our UInt32 has swapped endianness, swap back to restore.
                uint64 = uint64.byteSwapped
            }
            
            return uint64.data
        }
    }
}
