import SwiftUI

struct HomeScreen: View {
    @ObservedObject var viewModel = HomeViewModel()
    
    var body: some View {
        ScrollView {
            Spacer(minLength: 8)
            
            SearchComponent(
                placeholder: "Search recipes",
                text: $viewModel.searchText,
                onChange: { newText in
                    viewModel.onSearchTextChange(text: newText)
                }
            ).padding(.horizontal, 16)
            
            
            Spacer(minLength: 26)
            
            if viewModel.searchMeals.count == 0 {
                Sections_HomeScreen(viewModel: _viewModel)
                    .padding(.horizontal, 16)
            } else {
                Search_HomeScreen(viewModel: _viewModel)
                    .padding(.horizontal, 16)
            }
            
            
            Spacer(minLength: 20)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
