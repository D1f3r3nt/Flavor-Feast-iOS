import SwiftUI

struct IngredientsSection: View {
    @State var filter = ""
    var onFocus: () -> Void
    
    let elements = [1, 2, 3]
    
    var body: some View {
        VStack(spacing: 16) {
            CustomTitle(text: "Ingredients to use up")
            
            VStack(spacing: 8) {
                SearchComponent(
                    placeholder: "",
                    text: filter,
                    onChange: {_ in},
                    onFocus: onFocus
                )
                
                ShowFind(elements: elements)
            }
            .padding(.horizontal, 24)
        }
    }
}

struct IngredientsSection_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsSection(onFocus: {})
    }
}
