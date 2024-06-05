import SwiftUI

struct HomeScreen: View {
    @ObservedObject var viewModel = HomeViewModel()
    @State private var filterText = ""
    
    var body: some View {
        ScrollView {
            Spacer(minLength: 8)
            
            SearchComponent(
                placeholder: "Search recipes",
                text: $filterText,
                onChange: { _ in }
            ).padding(.horizontal, 16)
            
            
            Spacer(minLength: 26)
            
            if filterText == "" {
                Sections_HomeScreen(viewModel: _viewModel)
                    .padding(.horizontal, 16)
            } else {
                Search_HomeScreen()
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
