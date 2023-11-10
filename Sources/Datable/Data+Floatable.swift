//
//  Data+Floatable.swift
//  
//
//  Created by Dr. Brandon Wiley on 6/18/20.
//

import Foundation

extension Data: Floatable
{
    public init?(float: Float)
    {
        let uint32 = float.bitPattern
        self = uint32.data
    }
    
    public var float: Float?
    {
        guard self.count == 4 || self.count == 8 else
        {
            return nil
        }
        
        guard self.count == 4 else
        {
            // This can't actually fail.
            let doubleFloat = self.double!
            
            let singleFloat = Float(doubleFloat)
            return singleFloat
        }
        
        // This cannot fail.
        let uint32 = self.uint32
        assert(uint32 != nil)
        return Float(bitPattern: uint32!)
    }
    
    public init?(double: Double)
    {
        let uint64 = double.bitPattern
        self = uint64.data
    }
    
    public var double: Double?
    {
        guard self.count == 4 || self.count == 8 else
        {
            return nil
        }
        
        guard self.count == 8 else
        {
            // This cannot actually fail.
            let singleFloat = self.float!
            guard !singleFloat.isNaN else
            {
                return Double.nan
            }
            
            let doubleFloat = Double(singleFloat)
            return doubleFloat
        }
        
        // This cannot fail.
        let uint64 = self.uint64
        assert(uint64 != nil)
        return Double(bitPattern: uint64!)
    }
}
