//
//  Data+Datable.swift
//  DatablePackageDescription
//
//  Created by Brandon Wiley on 1/5/18.
//

import Foundation

extension Data: Datable {
    public init(data: Data) {
        self.init(bytes: data.bytes)
    }
    
    public var data: Data {
        return self
    }
}
