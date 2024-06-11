import SwiftUI

struct Body_DetailScreen: View {
    let viewModel: ObservedObject<DetailViewModel>
    
    var body: some View {
        ScrollView {
            if self.viewModel.wrappedValue.meal != nil {
                HStack(spacing: 24) {
                    HeaderSection(viewModel: viewModel)
                    
                    InfoSection(viewModel: viewModel)
                    
                    InstructionsSection(viewModel: viewModel)
                    
                    IngredientSection(viewModel: viewModel)
                }
                .padding(.bottom, 16)
            } else {
                ProgressView()
            }
        }
    }
}

struct Body_DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        @ObservedObject var viewModel = DetailViewModel(id: "52772")
        
        Body_DetailScreen(viewModel: _viewModel)
    }
}
