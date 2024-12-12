import SwiftUI

struct Review: Identifiable {
    let id: Int
    let title: String
    let description: String
    let rating: Int
    let image: String
    var likes: Int
    var isLiked: Bool
    var dislike: Int
    var isDisliked: Bool
    var comments: Int
}
