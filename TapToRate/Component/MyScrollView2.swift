import SwiftUI

struct ContentView2: View {
    var body: some View {
        ScrollView {
            Text("First")
            Text("Second")
            Text("Third")
            ForEach(1..<20) { index in
                Text("\(index)")
            }
        }.font(.largeTitle)
    }
}
#Preview {
    ContentView2()
}
