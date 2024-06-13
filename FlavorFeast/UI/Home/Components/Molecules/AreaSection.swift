import SwiftUI

struct AreaSection: View {
    let viewModel: ObservedObject<HomeViewModel>
    
    var body: some View {
        VStack(spacing: 16) {
            CustomTitle(text: "Recipes by area")
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(viewModel.wrappedValue.areas) { area in
                        NavigationLink {
                            GalleryScreen(
                                type: .AREA,
                                nameType: area.area
                            )
                        } label: {
                            FoodCard(
                                text: area.area,
                                image: getFlagFromAreaName(area: area.area.lowercased()),
                                isImageLocal: true
                            )
                        }
                    }
                }
            }
        }
    }
}

struct AreaSection_Previews: PreviewProvider {
    static var previews: some View {
        @ObservedObject var viewModel = HomeViewModel()
        
        AreaSection(viewModel: _viewModel)
    }
}
