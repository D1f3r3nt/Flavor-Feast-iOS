import SwiftUI

struct AppBar_GalleryScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    let viewModel: ObservedObject<GalleryViewModel>
    
    var body: some View {
        ZStack(alignment: .leading) {
            Text(viewModel.wrappedValue.nameType ?? "Error")
                .font(.epilogue(size: 18, type: .Bold))
                .frame(maxWidth: .infinity, alignment: .center)
            
            Image(systemName: "arrow.left")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .onTapGesture {
                    self.presentationMode.wrappedValue.dismiss()
                }
        }
    }
}

struct AppBar_GalleryScreen_Previews: PreviewProvider {
    static var previews: some View {
        @ObservedObject var viewModel = GalleryViewModel(type: .AREA, nameType: "Spanish")
        
        AppBar_GalleryScreen(viewModel: _viewModel)
    }
}
