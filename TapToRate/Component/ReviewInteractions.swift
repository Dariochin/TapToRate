import SwiftUI

struct ReviewInteractions: View {
    @State private var likeCount: Int = 0
    @State private var isLiked: Bool = false
    @State private var dislikeCount: Int = 0
    @State private var isDisliked: Bool = false
    var comments: Int

    var body: some View {
        HStack {
            Button(action: {
                isLiked.toggle()
                if isLiked {
                    likeCount += 1
                } else {
                    likeCount -= 1
                }
            }) {
                Image(
                    systemName: "hand.thumbsup.fill"
                )
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(isLiked ? .blue : .gray)
            }
            Text("\(likeCount)")

            Button(action: {
                isDisliked.toggle()
                if isDisliked {
                    dislikeCount += 1
                } else {
                    dislikeCount -= 1
                }
            }) {
                Image(
                    systemName: "hand.thumbsup.fill"
                )
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(isDisliked ? .red : .gray)
            }
            Text("\(dislikeCount)")

            Button(action: {
                print("Comment pressed")
            }) {
                Image(systemName: "bubble.right.fill")
                    .font(.system(size: 30))
                    .foregroundColor(.green)
            }
            Text("\(comments)")
        }
        .padding()
    }
}

#Preview {
    ReviewInteractions(comments: 1)
}
