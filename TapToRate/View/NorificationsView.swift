import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack {
            Text("Your notifications")
                .font(.largeTitle)
                .padding()
            Spacer()
        }
        .navigationTitle("Notifications")
    }
}

#Preview {
    NotificationsView()
}
