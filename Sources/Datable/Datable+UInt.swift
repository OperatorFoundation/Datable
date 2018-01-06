//
//  Datable+UUInt.swift
//  DatablePackageDescription
//
//  Created by Brandon Wiley on 1/5/18.
//

import Foundation

extension UInt: Datable {
    public init(data: Data) {
        var value = data.withUnsafeBytes {
            (ptr: UnsafePointer<UInt>) -> UInt in
            return ptr.pointee
        }
        
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
            
            return Data(buffer: UnsafeBufferPointer(start: &value, count: 1))
        }
    }
}

extension UInt64: Datable {
    public init(data: Data) {
        var value = data.withUnsafeBytes {
            (ptr: UnsafePointer<UInt64>) -> UInt64 in
            return ptr.pointee
        }
        
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
            
            return Data(buffer: UnsafeBufferPointer(start: &value, count: 1))
        }
    }
}

extension UInt32: Datable {
    public init(data: Data) {
        var value = data.withUnsafeBytes {
            (ptr: UnsafePointer<UInt32>) -> UInt32 in
            return ptr.pointee
        }
        
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
            
            return Data(buffer: UnsafeBufferPointer(start: &value, count: 1))
        }
    }
}

extension UInt16: Datable {
    public init(data: Data) {
        var value = data.withUnsafeBytes {
            (ptr: UnsafePointer<UInt16>) -> UInt16 in
            return ptr.pointee
        }
        
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
            
            return Data(buffer: UnsafeBufferPointer(start: &value, count: 1))
        }
    }
}

extension UInt8: Datable {
    public init(data: Data) {
        let value = data.withUnsafeBytes {
            (ptr: UnsafePointer<UInt8>) -> UInt8 in
            return ptr.pointee
        }
        
        self.init(value)
    }
    
    public var data: Data {
        get {
            var value = self
            return Data(buffer: UnsafeBufferPointer(start: &value, count: 1))
        }
    }
}

