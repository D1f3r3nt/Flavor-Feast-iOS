import SwiftUI

struct IngredientsSection: View {
    let viewModel: ObservedObject<HomeViewModel>
    @State var filter = ""
    
    var body: some View {
        VStack(spacing: 16) {
            CustomTitle(text: "Ingredients to use up")
            
            VStack(spacing: 8) {
                SearchComponent(
                    placeholder: "",
                    text: $filter,
                    onChange: {_ in},
                    onFocus: {
                        viewModel.wrappedValue.getAllIngredients()
                    }
                )
                
                let ingredientsFiltered = viewModel.wrappedValue.ingredients.filter({ ingredient in
                    ingredient.name.lowercased().contains(filter.lowercased())
                })
                
                if ingredientsFiltered.count > 0 && filter != "" {
                    ShowFind(elements: ingredientsFiltered)
                }
            }
            .padding(.horizontal, 24)
        }
    }
}

struct IngredientsSection_Previews: PreviewProvider {
    static var previews: some View {
        @ObservedObject var viewModel = HomeViewModel()
        
        IngredientsSection(viewModel: _viewModel)
    }
}
