import SwiftUI

struct Notification: Identifiable {
    let id = UUID()
    let userName: String
    let action: String
    let time: String
}
