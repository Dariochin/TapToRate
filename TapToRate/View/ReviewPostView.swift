import SwiftUI

struct PostView: View {
    var image: String
    var rating: Int
    var name: String
    var description: String

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(height: 250)
                .frame(maxWidth: .infinity)

            Text(name)
                .font(.title)
                .fontWeight(.bold)
            
            Rating(rating: rating)

            Text(description)
                .font(.body)
                .foregroundColor(.gray)
                .lineLimit(150)

            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .frame(minHeight: 300, maxHeight: 500)
    }
}

#Preview {
    PostView(
        image: "table",
        rating: 4,
        name: "Tavolo",
        description:
            "Questo è un tavolo che ho da moltissimi anni, purtroppo ora non lo uso più. Mi piace molto per la sua forma e la sua funzionalità per il gioco di carte"
    )
}
