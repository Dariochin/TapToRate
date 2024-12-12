import SwiftUI

struct ReviewCard: View {
    var review: Review

    var body: some View {
        VStack(spacing: 10) {
            Image(review.image)
                .resizable()
                .scaledToFit()
                .frame(height: 250)
                .frame(maxWidth: .infinity)

            VStack(alignment: .leading, spacing: 16) {
                Text(review.title)
                    .font(.title)
                    .fontWeight(.bold)

                Rating(rating: review.rating)

                Text(review.description)
                    .font(.body)
                    .foregroundColor(.primary)
                    .lineLimit(150)
            }
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .frame(minHeight: 300, maxHeight: 500)
    }
}

#Preview {
    ReviewCard(
        review: Review(
            id: 1,
            title: "Tavolo",
            description: "Questo è un tavolo che ho da moltissimi anni, purtroppo ora non lo uso più. Mi piace molto per la sua forma e la sua funzionalità per il gioco di carte",
            rating: 4,
            image: "table",
            likes: 50,
            isLiked: true,
            dislike: 10,
            isDisliked: false,
            comments: 15
        )
    )
}
