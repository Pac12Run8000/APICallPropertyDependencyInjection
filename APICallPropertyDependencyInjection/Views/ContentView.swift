import SwiftUI

struct ContentView: View {
    @State private var showFirstModal = false
    @State private var showSecondModal = false
    var body: some View {
    VStack(spacing: 20) {
            Text("Welcome to the main view")
                .padding()

            Button("ls acronym list") {
                showFirstModal = true
            }
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(Capsule())

            Button("as acronym list") {
                showSecondModal = true
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
        }
        .sheet(isPresented: $showFirstModal) {
            LSView()
        }
        .sheet(isPresented: $showSecondModal) {
            ASView()
        }
    }
}

#Preview {
    ContentView()
}
