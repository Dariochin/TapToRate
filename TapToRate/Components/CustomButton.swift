import SwiftUI

struct CustomButton: View {
    var title: String
    var colorText: Color
    var colorBackground: Color
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }) {
            Text(title)
                .fixedSize()
                .frame(width: 120, height: 50)
                .foregroundColor(colorText)
                .background(colorBackground)
                .cornerRadius(10)
                .font(.headline)
        }
    }
}

#Preview {
    CustomButton(title: "Test", colorText: .white, colorBackground: .blue, action: {})
}
