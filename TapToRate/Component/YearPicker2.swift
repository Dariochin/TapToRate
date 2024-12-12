import SwiftUI

struct YearPicker2: View {
    var years = Array(0...100)
    @State private var selectedYear = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Picker("Year", selection: $selectedYear) {
                ForEach(years, id: \.self) {
                    Text("\($0.formatted(.number.grouping(.never)))")
                }
            }
            .padding()
        }
    }
}

#Preview {
    YearPicker2()
}

