import SwiftUI

struct ReviewCard: View {
    var image: String
    var title: String
    var description: String
    var rating: Int

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
    ReviewCard(
        image: "table",
        title: "Tavolo",
        description:
            "Questo è un tavolo che ho da moltissimi anni, purtroppo ora non lo uso più. Mi piace molto per la sua forma e la sua funzionalità per il gioco di carte",
        rating: 4
    )
}
