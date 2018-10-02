import Foundation

extension Data: Arrayable {
    public typealias Element = UInt8

    public init(array: [Element])
    {
        self.init(bytes: array)
    }

    public var array: [Element]
    {
        let array = self.withUnsafeBytes
        {
            (pointer: UnsafePointer<Element>) -> [Element] in

            let buffer = UnsafeBufferPointer(start: pointer, count: self.count)
            return Array<Element>(buffer)
        }

        return array
    }
}
