//
//  NetworkIntable.swift
//  DatablePackageDescription
//
//  Created by Brandon Wiley on 7/30/18.
//

import Foundation

public protocol MaybeNetworkIntable {
    init?(maybeNetworkInt: Int)
    var maybeNetworkInt: Int? { get }
    
    init?(maybeNetworkInt8: Int8)
    var maybeNetworkInt8: Int8? { get }
    
    init?(maybeNetworkInt16: Int16)
    var maybeNetworkInt16: Int16? { get }
    
    init?(maybeNetworkInt32: Int32)
    var maybeNetworkInt32: Int32? { get }
    
    init?(maybeNetworkInt64: Int64)
    var maybeNetworkInt64: Int64? { get }
    
    init?(maybeNetworkUint: UInt)
    var maybeNetworkUint: UInt? { get }
    
    init?(maybeNetworkUint8: UInt8)
    var maybeNetworkUint8: UInt8? { get }
    
    init?(maybeNetworkUint16: UInt16)
    var maybeNetworkUint16: UInt16? { get }
    
    init?(maybeNetworkUint32: UInt32)
    var maybeNetworkUint32: UInt32? { get }
    
    init?(maybeNetworkUint64: UInt64)
    var maybeNetworkUint64: UInt64? { get }
}
