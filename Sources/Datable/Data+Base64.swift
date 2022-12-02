//
//  Data+Base64.swift
//  
//
//  Created by Dr. Brandon Wiley on 12/2/22.
//

import Foundation

extension Data
{
    public var base64: String
    {
        return self.base64EncodedString()
    }

    public init?(base64: String)
    {
        guard let result = Data(base64Encoded: base64.data) else
        {
            return nil
        }

        self = result
    }
}
