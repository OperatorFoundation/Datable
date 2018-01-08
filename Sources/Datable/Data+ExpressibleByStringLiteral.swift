//
//  Data+StringLiteralConvertible.swift
//  DatablePackageDescription
//
//  Created by Brandon Wiley on 1/7/18.
//

import Foundation

extension Data: ExpressibleByStringLiteral {
    public typealias StringLiteralType = String
    
    public init(stringLiteral value: Data.StringLiteralType) {
        switch DatableConfig.stringLiteralEncoding {
            case .utf8:
                self.init(data: value.data(using: .utf8)!)
            case .base64:
                self.init(base64Encoded: value)!
            case .ascii:
                self.init(data: value.data(using: .ascii)!)
        }
    }
}
