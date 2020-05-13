//
//  Datable+Int.swift
//  DatablePackageDescription
//
//  Created by Brandon Wiley on 1/5/18.
//

import Foundation

extension Int: Datable {
    public init(data: Data) {
        var value = data.withUnsafeBytes{ $0.load(as: Int.self) }
        
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

extension Int64: Datable {
    public init(data: Data) {
        var value = data.withUnsafeBytes{ $0.load(as: Int64.self) }
        
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

extension Int32: Datable {
    public init(data: Data) {
        var value = data.withUnsafeBytes{ $0.load(as: Int32.self) }
        
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

extension Int16: Datable {
    public init(data: Data) {
        var value = data.withUnsafeBytes{ $0.load(as: Int16.self) }
        
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

extension Int8: Datable {
    public init(data: Data) {
        let value = data.withUnsafeBytes{ $0.load(as: Int8.self) }
        
        self.init(value)
    }
    
    public var data: Data {
        get {
            let value = self
            return withUnsafeBytes(of: value) { Data($0) }
        }
    }
}
