import SwiftUI

struct SearchComponent: View {
    var placeholder: String
    var text: Binding<String>
    var onChange: (_ value: String) -> Void
    var onFocus: () -> Void = {}
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(CustomColor.Gray)
            
            TextField(
                placeholder,
                text: text,
                onEditingChanged: { focus in
                    if focus {
                        onFocus()
                    }
                }
            )
            .onChange(of: text.wrappedValue) { newValue in
                onChange(newValue)
            }
            .foregroundColor(CustomColor.Gray)
            
            if !text.wrappedValue.isEmpty {
                Image(systemName: "multiply.circle")
                    .foregroundColor(CustomColor.Gray)
                    .onTapGesture {
                        text.wrappedValue = ""
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
        @State var text = ""
        
        SearchComponent(
            placeholder: "Placeholder",
            text: $text,
            onChange: {_ in }
        )
    }
}
