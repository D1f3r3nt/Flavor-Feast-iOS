import SwiftUI

struct IngredientRow: View {
    var component: ComponentUI
    
    var body: some View {
        VStack(spacing: 6) {
            Text(component.ingredient)
                .font(.epilogue(size: 16, type: .Medium))
                .lineLimit(1)
            
            Text(component.measure)
                .font(.epilogue(size: 14))
                .foregroundColor(CustomColor.Gray)
                .lineLimit(1)
        }
        .frame(maxWidth: .infinity)
    }
}

struct IngredientRow_Previews: PreviewProvider {
    static var previews: some View {
        IngredientRow(component:
                        ComponentUI(
                            ingredient: "Salt",
                            measure: "1/2"
                        )
        )
    }
}
