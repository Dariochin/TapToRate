import SwiftUI

struct ReviewPostView: View {
    var image: String
    var title: String
    var description: String
    var rating: Int
    var likes: Int
    var dislikes: Int
    var comments: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(height: 250)
                .frame(maxWidth: .infinity)

            Text(title)
                .font(.title)
                .fontWeight(.bold)

            Text(description)
                .font(.body)
                .foregroundColor(.gray)
                .lineLimit(150)

            Rating(rating: rating)

            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .frame(minHeight: 300, maxHeight: 500)
    }
}

#Preview {
    ReviewPostView(
        image: "table",
        title: "Tavolo",
        description:
            "Questo è un tavolo che ho da moltissimi anni, purtroppo ora non lo uso più. Mi piace molto per la sua forma e la sua funzionalità per il gioco di carte",
        rating: 4,
        likes: 100,
        dislikes: 17,
        comments: 10
    )
}
