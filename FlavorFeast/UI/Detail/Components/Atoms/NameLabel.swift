import SwiftUI

struct NameLabel: View {
    var text: String
    
    var body: some View {
        HStack {
            Text(text)
                .font(.epilogue(size: 24, type: .Bold))
                .lineLimit(2)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct NameLabel_Previews: PreviewProvider {
    static var previews: some View {
        NameLabel(text: "Hola")
    }
}
