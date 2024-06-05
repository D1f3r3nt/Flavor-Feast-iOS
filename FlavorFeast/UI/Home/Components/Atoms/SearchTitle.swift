import SwiftUI

struct SearchTitle: View {
    var text: String
    
    var body: some View {
        HStack(alignment: .center) {
            Text(text)
                .font(.epilogue(size: 18, type: .Bold))
        }
        .frame(height: 46)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct SearchTitle_Previews: PreviewProvider {
    static var previews: some View {
        SearchTitle(text: "Hola")
    }
}
