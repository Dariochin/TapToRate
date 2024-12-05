import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Text("Il tuo profilo")
                .font(.largeTitle)
                .padding()
            Spacer()
        }
        .navigationTitle("Profilo")
    }
}

#Preview {
    ProfileView()
}
