import SwiftUI

struct LSView: View {
    @StateObject private var viewModel = LSViewModel()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("LSView")
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
    LSView()
}
