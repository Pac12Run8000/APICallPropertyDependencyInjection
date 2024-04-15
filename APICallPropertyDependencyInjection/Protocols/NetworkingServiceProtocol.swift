import Foundation

protocol NetworkingServiceProtocol {
    func retrieveList(acr:String) async throws -> [String]
}
