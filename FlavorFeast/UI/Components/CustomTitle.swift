import SwiftUI

struct CustomTitle: View {
    var text: String
    var fontSize: CGFloat = 22
    
    var body: some View {
        HStack {
            Text(text)
                .font(.epilogue(size: fontSize, type: .Bold))
                .foregroundColor(CustomColor.Black)
                .lineLimit(1)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct CustomTitle_Previews: PreviewProvider {
    static var previews: some View {
        CustomTitle(text: "Hola")
    }
}
