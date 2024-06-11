import SwiftUI

struct CategorySection: View {
    let viewModel: ObservedObject<HomeViewModel>
    
    var body: some View {
        VStack(spacing: 16) {
            CustomTitle(text: "Recipes by category")
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(viewModel.wrappedValue.categories) { category in
                        NavigationLink {
                            GalleryScreen(viewModel: GalleryViewModel(
                                type: .CATEGORY,
                                nameType: category.name
                            ))
                        } label: {
                            FoodCard(
                                text: category.name,
                                image: category.image
                            )
                        }
                    }
                }
            }
        }
    }
}

struct CategorySection_Previews: PreviewProvider {
    static var previews: some View {
        @ObservedObject var viewModel = HomeViewModel()
        
        CategorySection(viewModel: _viewModel)
    }
}
