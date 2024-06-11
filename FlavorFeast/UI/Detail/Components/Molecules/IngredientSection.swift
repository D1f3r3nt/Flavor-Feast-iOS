import SwiftUI

struct IngredientSection: View {
    let viewModel: ObservedObject<DetailViewModel>
    
    var body: some View {
        VStack(spacing: 16) {
            CustomTitle(text: "Ingredients")
            
            ForEach((self.viewModel.wrappedValue.meal?.elements.filter({ component in
                !component.ingredient.isEmpty
            })) ?? []) { component in
                IngredientRow(component: component)
            }
        }
        .padding(.horizontal, 16)
    }
}

struct IngredientSection_Previews: PreviewProvider {
    static var previews: some View {
        @ObservedObject var viewModel = DetailViewModel(id: "52772")
        
        IngredientSection(viewModel: _viewModel)
    }
}
