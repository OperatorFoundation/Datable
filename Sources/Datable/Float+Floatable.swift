//
//  Float+Floatable.swift
//
//
//  Created by Dr. Brandon Wiley on 11/10/23.
//

import Foundation

extension Float: Floatable
{
    public init(float: Float)
    {
        self = float
    }

    public var float: Float?
    {
        return self
    }

    public init(double: Double)
    {
        self = Float(double)
    }

    public var double: Double?
    {
        return Double(self)
    }
}

extension Double: Floatable
{
    public init(float: Float)
    {
        self = Double(float)
    }

    public var float: Float?
    {
        return Float(self)
    }

    public init(double: Double)
    {
        self = double
    }

    public var double: Double?
    {
        return self
    }
}
