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
            case .hex:
                var data = Data(capacity: value.count / 2)
                let s = String(value)

                let regex = try! NSRegularExpression(pattern: "[0-9a-f]{1,2}", options: .caseInsensitive)
                regex.enumerateMatches(in: s, range: NSRange(s.startIndex..., in: s))
                {
                    match, _, _ in
                    
                    let byteString = (value as NSString).substring(with: match!.range)
                    let num = UInt8(byteString, radix: 16)!
                    data.append(num)
                }

                self.init(data)
        }
    }
}
