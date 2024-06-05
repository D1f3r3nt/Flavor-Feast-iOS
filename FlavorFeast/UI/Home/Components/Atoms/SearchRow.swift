import SwiftUI

struct SearchRow: View {
    var text: String
    var onClick: () -> Void = {}
    
    var body: some View {
        HStack(alignment: .center) {
            Text(text)
                .font(.epilogue(size: 16))
        }
        .frame(height: 46)
        .frame(maxWidth: .infinity, alignment: .leading)
        .onTapGesture {
            onClick()
        }
        .padding(.horizontal, 8)
    }
}

struct SearchRow_Previews: PreviewProvider {
    static var previews: some View {
        SearchRow(text: "Hola")
    }
}
