import Foundation

final class MockNetworkingService:NetworkingServiceProtocol {
    func retrieveList() async throws -> [String] {
        return []
    }
    
    
}
