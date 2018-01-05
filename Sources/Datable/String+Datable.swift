//
//  String+Datable.swift
//  DatablePackageDescription
//
//  Created by Brandon Wiley on 1/5/18.
//

import Foundation

extension String: Datable {
    public init(data: Data) {
        self.init(data: data, encoding: DatableConfig.stringEncoding)!
    }
    
    public var data: Data {
        get {
            return self.data(using: DatableConfig.stringEncoding)!
        }
    }
}
