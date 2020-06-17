import Foundation

extension Data: Arrayable {
    public typealias Element = UInt8

    public init(array: [Element])
    {
        self.init(array)
    }

    public var array: [Element]
    {
        let array = self.withUnsafeBytes
        {
            (pointer: UnsafePointer<UInt8>) -> [UInt8] in
            
            let buffer = UnsafeBufferPointer(start: pointer, count: self.count)
            return Array<UInt8>(buffer)
        }
        return array
    }
}
