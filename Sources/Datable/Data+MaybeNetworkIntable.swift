//
//  Data+Intable.swift
//  Datable
//
//  Created by Dr. Brandon Wiley on 11/1/18.
//

import Foundation

extension Data: MaybeNetworkIntable {
    public init?(maybeNetworkInt: Int) {
        self = maybeNetworkInt.data
    }
    public var maybeNetworkInt: Int? {
        return Int(data: self)
    }
    
    public init?(maybeNetworkInt8: Int8) {
        self = maybeNetworkInt8.data
    }
    public var maybeNetworkInt8: Int8? {
        return Int8(data: self)
    }
    
    public init?(maybeNetworkInt16: Int16) {
        self = maybeNetworkInt16.data
    }
    public var maybeNetworkInt16: Int16? {
        return Int16(data: self)
    }

    public init?(maybeNetworkInt32: Int32) {
        self = maybeNetworkInt32.data
    }
    public var maybeNetworkInt32: Int32? {
        return Int32(data: self)
    }

    public init?(maybeNetworkInt64: Int64) {
        self = maybeNetworkInt64.data
    }
    public var maybeNetworkInt64: Int64? {
        return Int64(data: self)
    }
    
    public init?(maybeNetworkUint: UInt) {
        guard let networkData = maybeNetworkUint.maybeNetworkData else { return nil }
        self = networkData
    }
    public var maybeNetworkUint: UInt? {
        return UInt(maybeNetworkData: self)
    }
    
    public init?(maybeNetworkUint8: UInt8) {
        guard let networkData = maybeNetworkUint8.maybeNetworkData else { return nil }
        self = networkData
    }
    public var maybeNetworkUint8: UInt8? {
        return UInt8(maybeNetworkData: self)
    }
    
    public init?(maybeNetworkUint16: UInt16) {
        guard let networkData = maybeNetworkUint16.maybeNetworkData else { return nil }
        self = networkData
    }
    public var maybeNetworkUint16: UInt16? {
        return UInt16(maybeNetworkData: self)
    }
    
    public init?(maybeNetworkUint32: UInt32) {
        guard let networkData = maybeNetworkUint32.maybeNetworkData else { return nil }
        self = networkData
    }
    public var maybeNetworkUint32: UInt32? {
        return UInt32(maybeNetworkData: self)
    }
    
    public init?(maybeNetworkUint64: UInt64) {
        guard let networkData = maybeNetworkUint64.maybeNetworkData else { return nil }
        self = networkData
    }
    public var maybeNetworkUint64: UInt64? {
        return UInt64(maybeNetworkData: self)
    }
}
