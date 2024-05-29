import SwiftUI

struct HomeScreen: View {
    @State private var filterText = ""
    
    var body: some View {
        ScrollView {
            SearchComponent(
                placeholder: "Search recipes",
                text: filterText,
                onChange: { _ in }
            ).padding(.horizontal, 16)
            
            RandomSection()
                .padding(.horizontal, 16)
            
            CustomTitle(text: "Recipes by area")
                .padding(.horizontal, 16)
            
            
            CustomTitle(text: "Recipes by category")
                .padding(.horizontal, 16)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
