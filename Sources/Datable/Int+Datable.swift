//
//  Datable+Int.swift
//  DatablePackageDescription
//
//  Created by Brandon Wiley on 1/5/18.
//

import Foundation

extension Int: Datable {
    public init(data: Data) {
        var value = data.withUnsafeBytes {
            (ptr: UnsafePointer<Int>) -> Int in
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

extension Int64: Datable {
    public init(data: Data) {
        var value = data.withUnsafeBytes {
            (ptr: UnsafePointer<Int64>) -> Int64 in
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

extension Int32: Datable {
    public init(data: Data) {
        var value = data.withUnsafeBytes {
            (ptr: UnsafePointer<Int32>) -> Int32 in
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

extension Int16: Datable {
    public init(data: Data) {
        var value = data.withUnsafeBytes {
            (ptr: UnsafePointer<Int16>) -> Int16 in
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

extension Int8: Datable {
    public init(data: Data) {
        let value = data.withUnsafeBytes {
            (ptr: UnsafePointer<Int8>) -> Int8 in
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
