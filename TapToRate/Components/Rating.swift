import SwiftUI

struct Rating: View {
    var rating: Int
    
    var body: some View {
        HStack {
            ForEach(1..<6) { index in
                Image(systemName: index <= max(rating, 1) ? "star.fill" : "star")
                    .foregroundColor(index <= max(rating, 1) ? .yellow : .gray)
            }
        }
        .font(.title3)
    }
}

#Preview {
    Rating(rating: 4)
}
