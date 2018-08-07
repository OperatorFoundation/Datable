//
//  Intable.swift
//  DatablePackageDescription
//
//  Created by Brandon Wiley on 7/30/18.
//

import Foundation

public protocol Intable {
    init(int: Int)
    var intt: Int { get }
    
    init(int8: Int8)
    var int8: Int8 { get }
    
    init(int16: Int16)
    var int16: Int16 { get }
    
    init(int32: Int32)
    var int32: Int32 { get }
    
    init(int64: Int64)
    var int64: Int64 { get }
    
    init(uint: UInt)
    var uint: UInt { get }
    
    init(uint8: UInt8)
    var uint8: UInt8 { get }
    
    init(uint16: UInt16)
    var uint16: UInt16 { get }
    
    init(uint32: UInt32)
    var uint32: UInt32 { get }
    
    init(uint64: UInt64)
    var uint64: UInt64 { get }
}
