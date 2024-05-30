import SwiftUI

struct HomeScreen: View {
    @State private var filterText = ""
    
    var body: some View {
        ScrollView {
            Spacer(minLength: 8)
            
            SearchComponent(
                placeholder: "Search recipes",
                text: filterText,
                onChange: { _ in }
            ).padding(.horizontal, 16)
            
            
            Spacer(minLength: 26)
            
            Sections_HomeScreen()
                .padding(.horizontal, 16)
            
            Spacer(minLength: 20)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
