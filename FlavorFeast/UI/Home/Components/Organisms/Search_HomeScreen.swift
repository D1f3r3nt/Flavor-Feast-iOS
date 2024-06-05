import SwiftUI

struct Search_HomeScreen: View {
    let viewModel: ObservedObject<HomeViewModel>
    
    var body: some View {
        VStack {
            SearchTitle(text: "Recipes")
            
            ForEach(viewModel.wrappedValue.searchMeals) { meal in
                SearchRow(text: meal.name)
            }
        }
        .padding(.horizontal, 16)
    }
}

struct Search_HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        @ObservedObject var viewModel = HomeViewModel()
        
        Search_HomeScreen(viewModel: _viewModel)
    }
}
