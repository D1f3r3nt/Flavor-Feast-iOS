import SwiftUI

struct SearchComponent: View {
    var placeholder: String
    @State var text: String
    var onChange: (_ value: String) -> Void
    var onFocus: () -> Void = {}
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(CustomColor.Gray)
            
            TextField(
                placeholder,
                text: $text,
                onEditingChanged: { focus in
                    if focus {
                        onFocus()
                    }
                }
            )
            .onChange(of: text) { newValue in
                onChange(newValue)
            }
            
            if !text.isEmpty {
                Image(systemName: "multiply.circle")
                    .foregroundColor(CustomColor.Gray)
                    .onTapGesture {
                        text = ""
                    }
            }
        }
        .padding(12)
        .background(CustomColor.WhiteGray)
        .cornerRadius(24)
        .frame(height: 48)
    }
}

struct SearchComponent_Previews: PreviewProvider {
    static var previews: some View {
        SearchComponent(
            placeholder: "Placeholder",
            text: "",
            onChange: {_ in }
        )
    }
}
