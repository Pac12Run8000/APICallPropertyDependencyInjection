import Foundation

final class MockNetworkingService:NetworkingServiceProtocol {
    func retrieveList(acr:String) async throws -> [String] {
        return []
    }
    
    
}
