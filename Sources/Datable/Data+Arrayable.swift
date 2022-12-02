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
        let nsdata = self as NSData
        var mutablePointer = UnsafeMutableRawPointer(malloc(self.count))
        nsdata.getBytes(&mutablePointer, length: self.count)
        let count = self.count / MemoryLayout<T>.size

        let opaquePointer = OpaquePointer(mutablePointer)
        let typedPointer = UnsafePointer<T>(opaquePointer)

        // Get our buffer pointer and make an array out of it
        let buffer = UnsafeBufferPointer<T>(start:typedPointer, count:count)
        let array = [T](buffer)
        return array
    }
}
