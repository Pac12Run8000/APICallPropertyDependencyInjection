import SwiftUI

struct ASView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("AS View")
        }
        .padding()
    }
}

#Preview {
    ASView()
}