//
//  DatableConfig.swift
//  DatablePackageDescription
//
//  Created by Brandon Wiley on 1/5/18.
//

import Foundation

public class DatableConfig
{
    public static var stringEncoding: String.Encoding = .utf8
    public static var stringLiteralEncoding: StringLiteralEncoding = .utf8
    public static var endianess: Endianness = .big
    public static let localEndianness: Endianness = determineLocalEndianness()
}

public enum StringLiteralEncoding
{
    case utf8
    case base64
    case ascii
    case hex
}

public enum Endianness: Int
{
    case big    = 1
    case little = 0
}

func determineLocalEndianness() -> Endianness
{
    let number: UInt32 = 0x12345678
    assert(number == number.littleEndian)
    
    return .little
}
