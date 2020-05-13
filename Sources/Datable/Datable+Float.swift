//
//  Datable+Float.swift
//  Datable
//
//  Created by Adelita Schule on 1/19/18.
//

import Foundation

extension Float: Datable
{
    public init(data: Data)
    {
        var value = data.withUnsafeBytes{ $0.load(as: Float.self) }
        
        if DatableConfig.endianess != DatableConfig.localEndianness
        {
            switch DatableConfig.endianess
            {
                case .little:
                    value = Float(bitPattern: UInt32(littleEndian: data.withUnsafeBytes {$0.load(as: UInt32.self)}))
                case .big:
                    value = Float(bitPattern: UInt32(bigEndian: data.withUnsafeBytes {$0.load(as: UInt32.self)}))
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
