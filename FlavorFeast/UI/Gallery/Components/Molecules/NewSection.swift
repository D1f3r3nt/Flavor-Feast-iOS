import SwiftUI

struct NewSection: View {
    let viewModel: ObservedObject<GalleryViewModel>
    
    var body: some View {
        VStack(spacing: 22) {
            CustomTitle(text: "New & Trending")
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(viewModel.wrappedValue.newMeals) { meal in
                        NavigationLink {
                            DetailScreen(viewModel: DetailViewModel(id: meal.id))
                        } label: {
                            GalleryRecipe(meal: meal)
                        }
                    }
                }
            }
        }
    }
}

struct NewSection_Previews: PreviewProvider {
    static var previews: some View {
        @ObservedObject var viewModel = GalleryViewModel(type: .AREA, nameType: "Spanish")
        
        NewSection(viewModel: _viewModel)
    }
}
