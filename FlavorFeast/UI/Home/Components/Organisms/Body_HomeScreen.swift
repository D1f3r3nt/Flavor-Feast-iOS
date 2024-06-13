import SwiftUI

struct Body_HomeScreen: View {
    let viewModel: ObservedObject<HomeViewModel>
    @State var search: String = ""
    
    var body: some View {
        ScrollView {
            Spacer(minLength: 8)
            
            SearchComponent(
                placeholder: "Search recipes",
                text: $search,
                onChange: { newText in
                    viewModel.wrappedValue.onSearchTextChange(text: newText)
                }
            ).padding(.horizontal, 16)
            
            
            Spacer(minLength: 26)
            
            if viewModel.wrappedValue.searchMeals.count == 0 {
                Sections_HomeScreen(viewModel: viewModel)
                    .padding(.horizontal, 16)
            } else {
                Search_HomeScreen(viewModel: viewModel)
                    .padding(.horizontal, 16)
            }
            
            
            Spacer(minLength: 20)
        }
    }
}

struct Body_HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        @ObservedObject var viewModel = HomeViewModel()
        
        Body_HomeScreen(viewModel: _viewModel)
    }
}
