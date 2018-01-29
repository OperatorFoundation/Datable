//
//  Datable+Int.swift
//  DatablePackageDescription
//
//  Created by Brandon Wiley on 1/5/18.
//

import Foundation

extension UInt: Stringable {
    public init(string: String) {
        self.init(string)!
    }
    
    public var string: String {
        return String(self)
    }
}

extension UInt64: Stringable {
    public init(string: String) {
        self.init(string)!
    }
    
    public var string: String {
        return String(self)
    }
}

extension UInt32: Stringable {
    public init(string: String) {
        self.init(string)!
    }
    
    public var string: String {
        return String(self)
    }
}

extension UInt16: Stringable {
    public init(string: String) {
        self.init(string)!
    }
    
    public var string: String {
        return String(self)
    }
}

extension UInt8: Stringable {
    public init(string: String) {
        self.init(string)!
    }
    
    public var string: String {
        return String(self)
    }
}

