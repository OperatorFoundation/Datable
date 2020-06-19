//
//  Floatable.swift
//  
//
//  Created by Dr. Brandon Wiley on 6/18/20.
//

import Foundation

protocol Floatable
{
    init?(float: Float)
    var float: Float? {get}
    
    init?(double: Double)
    var double: Double? {get}
}
