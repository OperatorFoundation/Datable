//
//  Stringable.swift
//  DatablePackageDescription
//
//  Created by Brandon Wiley on 1/7/18.
//

import Foundation

public protocol Stringable {
    init(string: String)
    var string: String { get }
}
