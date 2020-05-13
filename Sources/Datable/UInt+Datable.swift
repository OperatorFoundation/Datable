//
//  Datable+UUInt.swift
//  DatablePackageDescription
//
//  Created by Brandon Wiley on 1/5/18.
//

import Foundation

extension UInt: Datable {
    public init(data: Data) {
        var value = data.withUnsafeBytes{ $0.load(as: UInt.self) }
        
        if DatableConfig.endianess != DatableConfig.localEndianness {
            switch DatableConfig.endianess {
            case .little:
                value = value.littleEndian
            case .big:
                value = value.bigEndian
            }
        }
        
        self.init(value)
    }
    
    public var data: Data {
        get {
            var value = self
            
            if DatableConfig.endianess != DatableConfig.localEndianness {
                switch DatableConfig.localEndianness {
                case .little:
                    value = value.bigEndian
                case .big:
                    value = value.littleEndian
                }
            }
            
            return withUnsafeBytes(of: value) { Data($0) }
        }
    }
}

extension UInt64: Datable {
    public init(data: Data) {
        
        var value = data.withUnsafeBytes{ $0.load(as: UInt64.self) }
        
        if DatableConfig.endianess != DatableConfig.localEndianness {
            switch DatableConfig.endianess {
            case .little:
                value = value.littleEndian
            case .big:
                value = value.bigEndian
            }
        }
        
        self.init(value)
    }
    
    public var data: Data {
        get {
            var value = self
            
            if DatableConfig.endianess != DatableConfig.localEndianness {
                switch DatableConfig.localEndianness {
                case .little:
                    value = value.bigEndian
                case .big:
                    value = value.littleEndian
                }
            }
            
            return withUnsafeBytes(of: value) { Data($0) }
        }
    }
}

extension UInt32: Datable {
    public init(data: Data) {
        var value = data.withUnsafeBytes{ $0.load(as: UInt32.self) }
        
        if DatableConfig.endianess != DatableConfig.localEndianness {
            switch DatableConfig.endianess {
            case .little:
                value = value.littleEndian
            case .big:
                value = value.bigEndian
            }
        }
        
        self.init(value)
    }
    
    public var data: Data {
        get {
            var value = self
            
            if DatableConfig.endianess != DatableConfig.localEndianness {
                switch DatableConfig.localEndianness {
                case .little:
                    value = value.bigEndian
                case .big:
                    value = value.littleEndian
                }
            }
            
            return withUnsafeBytes(of: value) { Data($0) }
        }
    }
}

extension UInt16: Datable {
    public init(data: Data) {
        var value = data.withUnsafeBytes{ $0.load(as: UInt16.self) }
        
        if DatableConfig.endianess != DatableConfig.localEndianness {
            switch DatableConfig.endianess {
            case .little:
                value = value.littleEndian
            case .big:
                value = value.bigEndian
            }
        }
        
        self.init(value)
    }
    
    public var data: Data {
        get {
            var value = self
            
            if DatableConfig.endianess != DatableConfig.localEndianness {
                switch DatableConfig.localEndianness {
                case .little:
                    value = value.bigEndian
                case .big:
                    value = value.littleEndian
                }
            }
            
            return withUnsafeBytes(of: value) { Data($0) }
        }
    }
}

extension UInt8: Datable {
    public init(data: Data) {
        let value = data.withUnsafeBytes{ $0.load(as: UInt8.self) }
        
        self.init(value)
    }
    
    public var data: Data {
        get {
            let value = self
            return withUnsafeBytes(of: value) { Data($0) }
        }
    }
}

