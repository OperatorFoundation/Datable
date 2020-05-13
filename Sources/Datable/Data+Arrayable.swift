import Foundation

extension Data: Arrayable {
    public typealias Element = UInt8

    public init(array: [Element])
    {
        self.init(array)
    }

    public var array: [Element]
    {
        let array = self.withUnsafeBytes{ $0.load(as: [Element].self) }
        return array
    }
}
