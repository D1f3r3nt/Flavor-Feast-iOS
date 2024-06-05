import SwiftUI

struct Sections_HomeScreen: View {
    let viewModel: ObservedObject<HomeViewModel>
    
    var body: some View {
        VStack(
            spacing: 26
        ) {
            RandomSection(viewModel: viewModel)
            
            IngredientsSection(
                onFocus: {}
            )
            
            AreaSection()
            
            CategorySection()
        }
    }
}

struct Sections_HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        @ObservedObject var viewModel = HomeViewModel()
        
        Sections_HomeScreen(viewModel: _viewModel)
    }
}
