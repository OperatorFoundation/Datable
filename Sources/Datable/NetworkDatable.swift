import Foundation

public protocol NetworkDatable {
    init(networkData: Data)
    var networkData: Data { get }
}
