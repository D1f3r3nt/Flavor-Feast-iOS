import SwiftUI

struct FindRow: View {
    var text: String
    
    var body: some View {
        HStack(alignment: .center) {
            Text(text)
                .foregroundColor(CustomColor.Black)
                .frame(maxWidth: .infinity, alignment: .leading)
                .lineLimit(1)
                .padding(12)
            
            Image(systemName: "chevron.forward")
                .padding(12)
                .foregroundColor(CustomColor.Black)
        }
        .background(CustomColor.WhiteGray)
    }
}

struct FindRow_Previews: PreviewProvider {
    static var previews: some View {
        FindRow(text: "hola")
    }
}
