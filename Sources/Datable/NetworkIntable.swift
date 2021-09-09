//
//  NetworkIntable.swift
//  DatablePackageDescription
//
//  Created by Brandon Wiley on 7/30/18.
//

import Foundation

public protocol NetworkIntable {
    init(networkInt: Int)
    var networkInt: Int { get }
    
    init(networkInt8: Int8)
    var networkInt8: Int8 { get }
    
    init(networkInt16: Int16)
    var networkInt16: Int16 { get }
    
    init(networkInt32: Int32)
    var networkInt32: Int32 { get }
    
    init(networkInt64: Int64)
    var networkInt64: Int64 { get }
    
    init(networkUint: UInt)
    var networkUint: UInt { get }
    
    init(networkUint8: UInt8)
    var networkUint8: UInt8 { get }
    
    init(networkUint16: UInt16)
    var networkUint16: UInt16 { get }
    
    init(networkUint32: UInt32)
    var networkUint32: UInt32 { get }
    
    init(networkUint64: UInt64)
    var networkUint64: UInt64 { get }
}
