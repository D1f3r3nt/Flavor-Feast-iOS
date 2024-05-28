import SwiftUI

struct HomeScreen: View {
    @State private var filterText = ""
    
    var body: some View {
        ScrollView {
            SearchComponent(
                placeholder: "Search recipes",
                text: filterText,
                onChange: { _ in }
            )
            
            GeneralButton(
                text: "Surprise Me",
                onClick: {}
            )
        }
        .padding(16)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
