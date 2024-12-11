import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack {
            Text("Search for reviews or items!")
                .font(.largeTitle)
                .padding()
            Spacer()
        }
        .navigationTitle("Search")
    }
}

#Preview {
    SearchView()
}
