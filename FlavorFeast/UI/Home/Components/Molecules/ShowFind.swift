import SwiftUI

struct ShowFind: View {
    var elements: [IngredientsUI]
    
    var body: some View {
        VStack(spacing: 0) {
            ForEach(
                Array(elements.take(3).enumerated()),
                id: \.offset
            ) { index, ingredient in
                if (index > 0) {
                    Divider()
                    .background(CustomColor.Gray)
                }
                NavigationLink {
                    GalleryScreen(
                        type: .INGREDIENTS,
                        nameType: ingredient.name
                    )
                } label: {
                    FindRow(text: ingredient.name)
                }
            }
        }
        .cornerRadius(12)
        .padding(24)
    }
}

struct ShowFind_Previews: PreviewProvider {
    static var previews: some View {
        ShowFind(elements: [PlayTest.getIngredientUI()])
    }
}
