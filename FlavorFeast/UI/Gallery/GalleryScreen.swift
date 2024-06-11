import SwiftUI

struct GalleryScreen: View {
    
    @ObservedObject var viewModel: GalleryViewModel
    
    // - MARK: Appear lifecycle
    func onAppear() {
        viewModel.obtainData()
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                AppBar_GalleryScreen(viewModel: _viewModel)
                    .padding(.horizontal, 16)
                
                Spacer(minLength: 40)
                
                Body_GalleryScreen(viewModel: _viewModel)
                    .padding(.horizontal, 16)
            }
        }
        .navigationBarBackButtonHidden(true)
        .onAppear {
            onAppear()
        }
    }
}

struct GalleryScreen_Previews: PreviewProvider {
    static var previews: some View {
        GalleryScreen(viewModel: GalleryViewModel(type: .CATEGORY, nameType: "Dessert"))
    }
}
