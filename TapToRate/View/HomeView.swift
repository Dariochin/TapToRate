import SwiftUI

struct HomeView: View {
    let reviews = [
            Review(id: 1, title: "Tavolo", description: "Questo è un tavolo che ho da moltissimi anni, purtroppo ora non lo uso più. Mi piace molto per la sua forma e la sua funzionalità per il gioco di carte", rating: 4, image: "table", likes: 50, isLiked: true, dislike: 10, isDisliked: false, comments: 15),
            Review(id: 2, title: "Sedia", description: "Mi piace molto la sedia per il gioco di carte. Mi piace molto la sedia per il gioco di carte. Mi piace molto la sedia per il gioco di carte", rating: 3, image: "chair", likes: 20, isLiked: false, dislike: 5, isDisliked: false, comments: 8),
            Review(id: 3, title: "Piatto", description: "Questo è un piatto che ho da moltissimi anni, purtroppo ora non lo uso più. Mi piace molto per la sua forma e la sua funzionalità per il gioco di carte", rating: 5, image: "plate", likes: 100, isLiked: true, dislike: 2, isDisliked: false, comments: 30),
            Review(id: 4, title: "Scivolo", description: "Ormaid è un software di scivolamento che mi piace molto per il gioco di carte. Ormaid è un software di scivolamento che mi piace molto per il gioco di carte", rating: 3, image: "slide", likes: 10, isLiked: false, dislike: 6, isDisliked: true, comments: 5)
        ]

    var body: some View {
        VStack {
            Text("Home")
                .font(.largeTitle)
                .padding()
            Spacer()
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(reviews) { review in
                        ReviewCard(review: review)
                            .padding(.bottom, 16)
                    }
                }
            }

        }
        .navigationTitle("Home")
    }
}

#Preview {
    HomeView()
}
