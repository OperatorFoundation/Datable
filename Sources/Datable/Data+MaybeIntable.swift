//
//  Data+Intable.swift
//  Datable
//
//  Created by Dr. Brandon Wiley on 11/1/18.
//

import Foundation

extension Data: MaybeIntable {
    public init?(int: Int) {
        self = int.data
    }
    public var int: Int? {
        return Int(data: self)
    }
    
    public init?(int8: Int8) {
        self = int8.data
    }
    public var int8: Int8? {
        return Int8(data: self)
    }
    
    public init?(int16: Int16) {
        self = int16.data
    }
    public var int16: Int16? {
        return Int16(data: self)
    }

    public init?(int32: Int32) {
        self = int32.data
    }
    public var int32: Int32? {
        return Int32(data: self)
    }

    public init?(int64: Int64) {
        self = int64.data
    }
    public var int64: Int64? {
        return Int64(data: self)
    }
    
    public init?(uint: UInt) {
        self = uint.data
    }
    public var uint: UInt? {
        return UInt(data: self)
    }
    
    public init?(uint8: UInt8) {
        self = uint8.data
    }
    public var uint8: UInt8? {
        return UInt8(data: self)
    }
    
    public init?(uint16: UInt16) {
        self = uint16.data
    }
    public var uint16: UInt16? {
        return UInt16(data: self)
    }
    
    public init?(uint32: UInt32) {
        self = uint32.data
    }
    public var uint32: UInt32? {
        return UInt32(data: self)
    }
    
    public init?(uint64: UInt64) {
        self = uint64.data
    }
    public var uint64: UInt64? {
        return UInt64(data: self)
    }
}
