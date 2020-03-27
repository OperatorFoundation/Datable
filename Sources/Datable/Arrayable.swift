//
//  Arrayable.swift
//  Datable
//
//  Created by Dr. Brandon Wiley on 10/2/18.
//

import Foundation

public protocol Arrayable {
    associatedtype Element

    init(array: Array<Element>)
    var array: Array<Element> { get }
}
