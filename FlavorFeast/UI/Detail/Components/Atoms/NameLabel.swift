import SwiftUI

struct NameLabel: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.epilogue(size: 24, type: .Bold))
            .lineLimit(2)
    }
}

struct NameLabel_Previews: PreviewProvider {
    static var previews: some View {
        NameLabel(text: "Hola")
    }
}
