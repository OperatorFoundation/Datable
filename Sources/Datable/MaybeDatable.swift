//
//  MaybeDatable.swift
//  Datable
//
//  Created by Dr. Brandon Wiley on 11/1/18.
//

import Foundation

public protocol MaybeDatable {
    init?(data: Data)
    var data: Data? { get }
}
