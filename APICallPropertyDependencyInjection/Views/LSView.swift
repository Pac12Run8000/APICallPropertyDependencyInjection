import SwiftUI

struct LSView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("LSView")
        }
        .padding()
    }
}

#Preview {
    LSView()
}
