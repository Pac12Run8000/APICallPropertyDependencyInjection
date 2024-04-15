import Foundation

protocol NetworkingServiceProtocol {
    func retrieveList() async throws -> [String]
}
