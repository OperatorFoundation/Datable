//
//  String+Intable.swift
//  DatablePackageDescription
//
//  Created by Brandon Wiley on 7/30/18.
//

import Foundation

extension String: Intable {
    public init(int: Int) {
        self = String(int)
    }
    public var intt: Int {
        return Int(self)!
    }
    
    public init(int8: Int8) {
        self = String(int8)
    }
    public var int8: Int8 {
        return Int8(self)!
    }
    
    public init(int16: Int16) {
        self = String(int16)
    }
    public var int16: Int16 {
        return Int16(self)!
    }
    
    public init(int32: Int32) {
        self = String(int32)
    }
    public var int32: Int32 {
        return Int32(self)!
    }
    
    public init(int64: Int64) {
        self = String(int64)
    }
    public var int64: Int64 {
        return Int64(self)!
    }
    
    public init(uint: UInt) {
        self = String(uint)
    }
    public var uint: UInt {
        return UInt(self)!
    }
    
    public init(uint8: UInt8) {
        self = String(uint8)
    }
    public var uint8: UInt8 {
        return UInt8(self)!
    }
    
    public init(uint16: UInt16) {
        self = String(uint16)
    }
    public var uint16: UInt16 {
        return UInt16(self)!
    }
    
    public init(uint32: UInt32) {
        self = String(uint32)
    }
    public var uint32: UInt32 {
        return UInt32(self)!
    }
    
    public init(uint64: UInt64) {
        self = String(uint64)
    }
    public var uint64: UInt64 {
        return UInt64(self)!
    }
}
