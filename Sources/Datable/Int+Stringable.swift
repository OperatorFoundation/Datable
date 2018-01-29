//
//  Datable+Int.swift
//  DatablePackageDescription
//
//  Created by Brandon Wiley on 1/5/18.
//

import Foundation

extension Int: Stringable {
    public init(string: String) {
        self.init(string)!
    }
    
    public var string: String {
        return String(self)
    }
}

extension Int64: Stringable {
    public init(string: String) {
        self.init(string)!
    }
    
    public var string: String {
        return String(self)
    }
}

extension Int32: Stringable {
    public init(string: String) {
        self.init(string)!
    }
    
    public var string: String {
        return String(self)
    }
}

extension Int16: Stringable {
    public init(string: String) {
        self.init(string)!
    }
    
    public var string: String {
        return String(self)
    }
}

extension Int8: Stringable {
    public init(string: String) {
        self.init(string)!
    }
    
    public var string: String {
        return String(self)
    }
}
