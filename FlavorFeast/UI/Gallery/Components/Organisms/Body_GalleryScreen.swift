import SwiftUI

struct Body_GalleryScreen: View {
    let viewModel: ObservedObject<GalleryViewModel>
    
    var body: some View {
        ScrollView {
            NewSection(viewModel: viewModel)
            
            Spacer(minLength: 24)
            
            MoreSection(viewModel: viewModel)
        }
    }
}

struct Body_GalleryScreen_Previews: PreviewProvider {
    static var previews: some View {
        @ObservedObject var viewModel = GalleryViewModel(type: .AREA, nameType: "Spanish")
        
        Body_GalleryScreen(viewModel: _viewModel)
    }
}
