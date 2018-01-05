import Foundation

public protocol Datable {
    init(data: Data)
    var data: Data { get }
}
