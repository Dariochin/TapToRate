import SwiftUI

struct NotificationsView: View {
    let notifications: [Notification] = [
        Notification(
            userName: "Mario Rossi", action: "ha recensito il tuo post",
            time: "10 minuti fa"),
        Notification(
            userName: "Giulia Bianchi",
            action: "ha commentato il tuo post", time: "1 ora fa"),
        Notification(
            userName: "Marco Verdi", action: "ha messo like al tuo post",
            time: "2 ore fa"),
        Notification(
            userName: "Anna Neri", action: "ha messo dislike al tuo post",
            time: "3 ore fa"),
        Notification(
            userName: "Mario Rossi", action: "ha iniziato a seguirti",
            time: "4 ore fa"),
    ]

    var body: some View {
        VStack {
            Text("Notifiche")
                .font(.largeTitle)
                .padding()

            List(notifications) { notification in
                            NotificationCard(notification: notification)
                        }
            .listStyle(PlainListStyle())

            Spacer()
        }
        .navigationTitle("Notifications")
    }
}

#Preview {
    NotificationsView()
}
