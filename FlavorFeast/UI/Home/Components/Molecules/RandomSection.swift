import SwiftUI

struct RandomSection: View {
    let viewModel: ObservedObject<HomeViewModel>
    
    var body: some View {
        VStack {
            GeneralButton(
                text: "Surprise Me",
                onClick: {
                    viewModel.wrappedValue.getRandomMeal()
                }
            )
            
            if viewModel.wrappedValue.randomMeal != nil {
                Spacer(minLength: 12)
                
                NavigationLink {
                    DetailScreen(id: viewModel.wrappedValue.randomMeal!.id)
                } label: {
                    RandomMeal(
                        meal: viewModel.wrappedValue.randomMeal!
                    )
                }
            }
        }
    }
}

struct RandomSection_Previews: PreviewProvider {
    static var previews: some View {
        @ObservedObject var viewModel = HomeViewModel()
        RandomSection(viewModel: _viewModel)
    }
}
