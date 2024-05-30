import SwiftUI

struct ShowFind: View {
    var elements: [Int]
    
    var body: some View {
        VStack(spacing: 0) {
            ForEach(
                Array(elements.take(3).enumerated()),
                id: \.offset
            ) { index, value in
                if (index > 0) {
                    Divider()
                    .background(CustomColor.Gray)
                }
                
                FindRow(text: "\(value)")
            }
        }
        .cornerRadius(12)
        .padding(24)
    }
}

struct ShowFind_Previews: PreviewProvider {
    static var previews: some View {
        ShowFind(elements: [1, 2, 3])
    }
}
