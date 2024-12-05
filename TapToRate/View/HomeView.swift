import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("Home")
                .font(.largeTitle)
                .padding()
            Spacer()
            ScrollView {
                VStack(spacing: 16) {
                    ReviewPostView(
                        image: "table",
                        title: "Tavolo",
                        description:
                            "Questo è un tavolo che ho da moltissimi anni, purtroppo ora non lo uso più. Mi piace molto per la sua forma e la sua funzionalità per il gioco di carte",
                        rating: 4,
                        likes: 10,
                        dislikes: 2,
                        comments: 10)
                    
                    ReviewPostView(
                        image: "chair",
                        title: "Sedia",
                        description:
                            "Mi piace molto la sedia per il gioco di carte. Mi piace molto la sedia per il gioco di carte. Mi piace molto la sedia per il gioco di carte",
                        rating: 3,
                        likes: 209,
                        dislikes: 2,
                        comments: 1)
                    
                    ReviewPostView(
                        image: "plate",
                        title: "Piatto",
                        description:
                            "Questo è un piatto che ho da moltissimi anni, purtroppo ora non lo uso più. Mi piace molto per la sua forma e la sua funzionalità per il gioco di carte",
                        rating: 5,
                        likes: 234,
                        dislikes: 2,
                        comments: 2)
                    
                    ReviewPostView(
                        image: "slide",
                        title: "Scivolo",
                        description:
                            "Ormaid è un software di scivolamento che mi piace molto per il gioco di carte. Ormaid è un software di scivolamento che mi piace molto per il gioco di carte",
                        rating: 3,
                        likes: 234,
                        dislikes: 2,
                        comments: 23)
                }
            }
            
        }
        .navigationTitle("Home")
    }
}

#Preview {
    HomeView()
}
