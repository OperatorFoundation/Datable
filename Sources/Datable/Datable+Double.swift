//
//  Datable+Double.swift
//  Datable
//
//  Created by Adelita Schule on 1/22/18.
//

import Foundation

extension Double: Datable
{
    public init(data: Data)
    {
        var value = data.withUnsafeBytes{ $0.load(as: Double.self) }
        
        if DatableConfig.endianess != DatableConfig.localEndianness
        {
            switch DatableConfig.endianess
            {
            case .little:
                value = Double(bitPattern: UInt64(littleEndian: data.withUnsafeBytes {$0.load(as: UInt64.self)}))
            case .big:
                value = Double(bitPattern: UInt64(bigEndian: data.withUnsafeBytes {$0.load(as: UInt64.self)}))
            }
        }
        
        self.init(value)
    }
    
    public var data: Data
    {
        get
        {
            var value = self.bitPattern
            
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
