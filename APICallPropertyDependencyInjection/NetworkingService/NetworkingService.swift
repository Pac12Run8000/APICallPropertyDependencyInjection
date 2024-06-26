import Foundation

final class NetworkingService:NetworkingServiceProtocol {
    public static let shared = NetworkingService()
    init(){}
    func retrieveList(acr:String) async throws -> [String] {
        var wordList = [String]()
        guard let url = BuildURLConstants.urlForService(str: acr) else {
            throw CustomErrors.badURL
        }
        guard let (data, response) = try await URLSession.shared.data(from: url) as? (Data, URLResponse) else {
            throw CustomErrors.badURL
        }
        guard let responseRequest = response as? HTTPURLResponse, (200...299).contains(responseRequest.statusCode) else {
            throw URLError(.badServerResponse)
        }
        guard let acronymList = try JSONDecoder().decode(AcronymList.self, from: data) as? AcronymList else {
            throw URLError(.cannotDecodeContentData)
        }
        guard !acronymList.isEmpty else {
            throw CustomErrors.emptyObject
        }
        for item in acronymList[0].lfs {
            wordList.append(item.lf)
        }
        return wordList
    }
    
    
}
