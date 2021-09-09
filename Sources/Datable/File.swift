//
//  MaybeDatable.swift
//  Datable
//
//  Created by Dr. Brandon Wiley on 11/1/18.
//

import Foundation

public protocol MaybeNetworkDatable {
    init?(maybeNetworkData: Data)
    var maybeNetworkData: Data? { get }
}
