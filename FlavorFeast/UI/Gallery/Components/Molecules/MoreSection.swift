import SwiftUI

struct MoreSection: View {
    let viewModel: ObservedObject<GalleryViewModel>
    
    var body: some View {
        VStack(spacing: 22) {
            CustomTitle(text: "More from this group")
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(viewModel.wrappedValue.meals) { meal in
                        GalleryRecipe(size: 160, meal: meal)
                    }
                }
            }
        }
    }
}

struct MoreSection_Previews: PreviewProvider {
    static var previews: some View {
        @ObservedObject var viewModel = GalleryViewModel(type: .AREA, nameType: "Spanish")
        
        MoreSection(viewModel: _viewModel)
    }
}
