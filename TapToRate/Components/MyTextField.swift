import SwiftUI

struct MyTextField: View {
    var Icon: String? = "" 
    @Binding var textValue: String
    var isMandatory: Bool = false
    var isSecret: Bool = false
    var textHint: String
    
    var body: some View {
        HStack {
            if let icon = Icon {
                            Image(systemName: icon)
                        }
            if isSecret {
                SecureField(textHint, text: $textValue)
            }
            else {
                TextField(textHint, text: $textValue)
            }
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(isMandatory && textValue.isEmpty ? Color.red : Color.gray, lineWidth: 1)
                .frame(maxWidth: .infinity, maxHeight: 50)
        )
        .padding(EdgeInsets(top: 0, leading: 1, bottom: 0, trailing: 1))
    }
}

#Preview {
    MyTextField(Icon: "person", textValue: .constant(""), isMandatory: false, isSecret: false, textHint: "username")
}
