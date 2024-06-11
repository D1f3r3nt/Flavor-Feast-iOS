import SwiftUI

struct InfoSection: View {
    @Environment(\.openURL) var openURL
    let viewModel: ObservedObject<DetailViewModel>
    
    var body: some View {
        let currentMeal = viewModel.wrappedValue.meal
        
        if currentMeal != nil {
            VStack(spacing: 16) {
                NameLabel(text: currentMeal!.name)
                    .padding(.horizontal, 16)
                
                CustomTitle(
                    text: currentMeal!.category.capitalized,
                    fontSize: 18
                )
                .padding(.horizontal, 16)
                
                if !currentMeal!.tags.isEmpty {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 8) {
                            ForEach(currentMeal!.tags, id: \.self) { tag in
                                Tag(text: tag)
                            }
                        }
                        .padding(.horizontal, 16)
                    }
                }
                
                GeneralButton(
                    text: "Watch video",
                    onClick: {
                        openURL(URL(string: currentMeal!.video)!)
                    }
                )
                .padding(.horizontal, 16)
            }
        }
    }
}

struct InfoSection_Previews: PreviewProvider {
    static var previews: some View {
        @ObservedObject var viewModel = DetailViewModel(id: "52772")
        
        InfoSection(viewModel: _viewModel)
    }
}
