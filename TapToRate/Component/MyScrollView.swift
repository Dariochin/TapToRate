import SwiftUI

struct MyScrollView: View {
    var body: some View {
        ScrollViewReader { scrollView in
            ScrollView {
                Button("Scroll to bottom") {
                    withAnimation {
                        scrollView.scrollTo(99, anchor: .center)
                    }
                }
                
                ForEach(0..<100) { index in
                    Text(String(index))
                        .id(index)
                }
            }
        }
    }
}

#Preview {
    MyScrollView()
}

