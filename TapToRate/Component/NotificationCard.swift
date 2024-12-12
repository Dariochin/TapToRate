import SwiftUI

struct NotificationCard: View {
    var notification: Notification

    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .foregroundColor(Color.blue)
                .padding(5)
                .padding(.trailing, 10)

            VStack(alignment: .leading) {
                Text(notification.userName)
                    .font(.headline)
                    .fontWeight(.bold)

                Text(notification.action)
                    .font(.body)
                    .foregroundColor(.primary)
            }

            Spacer()

            Text(notification.time)
                .foregroundColor(Color.gray)
                .font(.caption)

            Image(systemName: "square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .foregroundColor(Color.gray)
                .padding(5)
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    NotificationCard(
        notification: .init(
            userName: "User Name", action: "Action", time: "Time"))
}
