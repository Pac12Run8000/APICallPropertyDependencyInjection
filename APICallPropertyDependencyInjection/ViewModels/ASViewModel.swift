import Foundation

class ASViewModel: ObservableObject {
    @Published var wordList: [String]?
    @Published var errorMessage: String?
    
    var networkingService: NetworkingServiceProtocol?
    
   @MainActor
   func loadData() async {
       guard let networkingService = networkingService else {
           errorMessage = "Networking service not initialized"
           return
       }
       do {
           let fetchedList = try await networkingService.retrieveList(acr: "as")
           self.wordList = fetchedList
       } catch {
           self.errorMessage = "Failed to fetch data: \(error.localizedDescription)"
       }
   }
}
