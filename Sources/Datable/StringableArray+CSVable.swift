//
//  StringableArray+CSVable.swift
//  Datable
//
//  Created by Brandon Wiley on 7/24/19.
//

import Foundation

extension Array: CSVable where Element: Stringable
{
    var csv: String
    {
        get
        {
            let parts = self.map
            {
                (element) -> String in
                
                return element.string
            }
            
            return parts.joined(separator: ",")
        }
    }
}
