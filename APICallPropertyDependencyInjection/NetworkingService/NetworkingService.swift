import Foundation

final class NetworkingService:NetworkingServiceProtocol {
    public static let shared = NetworkingService()
    private init(){}
    func retrieveList() async throws -> [String] {
        return []
    }
    
    
}
