import Foundation

extension Data: Arrayable {
    public typealias Element = UInt8

    public init(array: [Element])
    {
        self.init(array)
    }

    public var array: [Element]
    {
        return self.unsafeArray(of: Element.self)
    }
    
    public func array<T>(of: T.Type) -> [T]?
    {
        switch "\(T.self)"
        {
            case "UInt8":
                return unsafeArray(of: T.self)
            
            case "Int8":
                return unsafeArray(of: T.self)

            default:
                return nil
        }
    }
    
    func unsafeArray<T>(of: T.Type) -> [T]
    {
        let array = self.withUnsafeBytes
        {
            (pointer: UnsafePointer<T>) -> [T] in
            
            let buffer = UnsafeBufferPointer(start: pointer, count: self.count)
            return Array<T>(buffer)
        }
        return array
    }
}
