//
//  String+Arrayable.swift
//  
//
//  Created by Dr. Brandon Wiley on 6/23/20.
//

import Foundation

extension String: Arrayable
{
    public init(array: Array<Element>)
    {
        self = String(array)
    }
    
    public var array: Array<Character>
    {
        return Array(self)
    }
    
    public func array<T>(of: T.Type) -> [T]?
    {
        switch "\(T.self)"
        {
            case "UInt8":
                return self.data.array(of: T.self)
            
            case "Int8":
                return self.data.array(of: T.self)

            default:
                return nil
        }
    }
}
