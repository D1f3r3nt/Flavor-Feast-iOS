import SwiftUI

struct HeaderSection: View {
    @Environment(\.presentationMode) var presentationMode
    
    let viewModel: ObservedObject<DetailViewModel>
    
    var body: some View {
        let currentMeal = self.viewModel.wrappedValue.meal
        
        if currentMeal != nil {
            ZStack(alignment: .topLeading) {
                AsyncImage(url: URL(string: currentMeal!.image)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    ProgressView()
                }
                .frame(height: 320)
                .frame(maxWidth: .infinity)
                
                Image(systemName: "arrow.left")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .onTapGesture {
                        self.presentationMode.wrappedValue.dismiss()
                    }
                    .padding(.top, 16)
                    .padding(.leading, 16)
                    .foregroundColor(CustomColor.White)

            }
        } else {
            ProgressView()
        }
    }
}

struct HeaderSection_Previews: PreviewProvider {
    static var previews: some View {
        @ObservedObject var viewModel = DetailViewModel(id: "52772")
        
        HeaderSection(viewModel: _viewModel)
    }
}
