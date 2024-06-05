import SwiftUI

struct Sections_HomeScreen: View {
    let viewModel: ObservedObject<HomeViewModel>
    
    var body: some View {
        VStack(
            spacing: 26
        ) {
            RandomSection(viewModel: viewModel)
            
            IngredientsSection(viewModel: viewModel)
            
            AreaSection(viewModel: viewModel)
            
            CategorySection(viewModel: viewModel)
        }
    }
}

struct Sections_HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        @ObservedObject var viewModel = HomeViewModel()
        
        Sections_HomeScreen(viewModel: _viewModel)
    }
}
