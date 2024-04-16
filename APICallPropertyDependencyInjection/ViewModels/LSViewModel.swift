import Foundation

class LSViewModel: ObservableObject {
    @Published var wordList: [String]?
    
    
    var networkingService: NetworkingServiceProtocol?
    
   @MainActor
   func loadData() async throws {
       guard let networkingService = networkingService else {
           throw CustomErrors.noNetworkingService
       }
       
       guard let fetchedList = try await networkingService.retrieveList(acr: "ls") as? [String] else {
           throw CustomErrors.noArrayOfStrings
       }
       self.wordList = fetchedList
   }
}
