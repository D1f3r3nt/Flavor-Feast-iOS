import SwiftUI

struct Tag: View {
    var text: String
    
    var body: some View {
        HStack {
            Text(text)
                .padding(.vertical, 8)
                .padding(.horizontal, 16)
                .font(.epilogue(size: 14, type: .Medium))
                .lineLimit(1)
        }
        .frame(height: 32)
        .background(CustomColor.WhiteGray)
        .cornerRadius(16)
    }
}

struct Tag_Previews: PreviewProvider {
    static var previews: some View {
        Tag(text: "Hola")
    }
}
