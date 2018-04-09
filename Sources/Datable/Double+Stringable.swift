//
//  Double+Stringable.swift
//  Datable
//
//  Created by Adelita Schule on 4/9/18.
//

import Foundation

extension Double: Stringable
{
    public init(string: String) {
        self.init(string)!
    }
    
    public var string: String {
        return String(self)
    }
}
