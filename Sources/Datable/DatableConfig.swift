//
//  DatableConfig.swift
//  DatablePackageDescription
//
//  Created by Brandon Wiley on 1/5/18.
//

import Foundation

public class DatableConfig {
    public static var stringEncoding: String.Encoding = .utf8
    public static var endiannes: Endianness = .big
}

enum Endianness {
    case big
    case little
}
