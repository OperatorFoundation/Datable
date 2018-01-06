//
//  DatableConfig.swift
//  DatablePackageDescription
//
//  Created by Brandon Wiley on 1/5/18.
//

import Foundation

public class DatableConfig {
    public static var stringEncoding: String.Encoding = .utf8
    public static var endianess: Endianness = .big
    public static let localEndianness: Endianness = determineLocalEndianness()
}

public enum Endianness {
    case big
    case little
}

func determineLocalEndianness() -> Endianness {
    let number: UInt32 = 0x12345678
    let converted = number.bigEndian
    if number == converted {
        return .big
    } else {
        return .little
    }
}
