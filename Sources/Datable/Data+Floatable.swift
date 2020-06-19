//
//  Data+Floatable.swift
//  
//
//  Created by Dr. Brandon Wiley on 6/18/20.
//

import Foundation

extension Data: Floatable
{
    init?(float: Float)
    {
        let uint32 = float.bitPattern
        self = uint32.data
    }
    
    var float: Float?
    {
        guard self.count == 4 || self.count == 8 else
        {
            return nil
        }
        
        if self.count == 4
        {
            guard let uint32 = self.uint32 else {return nil}
            return Float(bitPattern: uint32)
        }
        else
        {
            // This can't actually fail.
            let doubleFloat = self.double!
            
            let singleFloat = Float(doubleFloat)
            return singleFloat
        }
    }
    
    init?(double: Double)
    {
        let uint64 = double.bitPattern
        self = uint64.data
    }
    
    var double: Double?
    {
        guard self.count == 4 || self.count == 8 else
        {
            return nil
        }
        
        if self.count == 8
        {
            guard let uint64 = self.uint64 else {return nil}
            return Double(bitPattern: uint64)
        }
        else
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
    }
}
