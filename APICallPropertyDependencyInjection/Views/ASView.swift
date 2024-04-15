import SwiftUI

struct ASView: View {
    @StateObject private var viewModel = ASViewModel()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("AS View")
            List(viewModel.wordList ?? [], id:\.self) { item in
                Text(item)
            }
        }
        .padding()
        .onAppear {
            viewModel.networkingService = NetworkingService()
            Task {
                await viewModel.loadData()
            }
        }
    }
}

#Preview {
    ASView()
}
