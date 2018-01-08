//
//  Data+Stringable.swift
//  DatablePackageDescription
//
//  Created by Brandon Wiley on 1/7/18.
//

import Foundation

extension Data: Stringable {
    public init(string: String) {
        self.init(data: string.data(using: DatableConfig.stringEncoding)!)
    }
    
    public var string: String {
        return String(data: self, encoding: DatableConfig.stringEncoding)!
    }
}
