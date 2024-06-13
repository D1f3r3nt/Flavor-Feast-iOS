import SwiftUI

struct Body_DetailScreen: View {
    let viewModel: ObservedObject<DetailViewModel>
    
    var body: some View {
        if self.viewModel.wrappedValue.meal != nil {
            ScrollView {
                VStack(spacing: 24) {
                    HeaderSection(viewModel: viewModel)
                    
                    InfoSection(viewModel: viewModel)
                        .padding(.top, 24)
                        .background(CustomColor.White)
                    
                    InstructionsSection(viewModel: viewModel)
                    
                    IngredientSection(viewModel: viewModel)
                }
                .padding(.bottom, 16)
            }
        } else {
            VStack(alignment: .center, spacing: 14) {
                Text("Loading")
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
