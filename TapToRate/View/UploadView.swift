import SwiftUI

struct UploadView: View {
    var body: some View {
        VStack {
            Text("Carica la tua recensione!")
                .font(.largeTitle)
                .padding()
            Spacer()
        }
        .navigationTitle("Upload")
    }
}

#Preview {
    UploadView()
}
