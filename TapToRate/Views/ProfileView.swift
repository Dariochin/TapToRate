import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .padding()
                
                Text("Username")
                    .font(.title)
                
                Text("user@email.com")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Divider()
                
                HStack {
                    VStack {
                        Text("Posts")
                            .font(.headline)
                        Text("10")
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("Reviews")
                            .font(.headline)
                        Text("25")
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("Avg Rating")
                            .font(.headline)
                        Text("4.5")
                    }
                }
                .padding()
                
                Spacer()
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
