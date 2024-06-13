import SwiftUI

struct DetailScreen: View {
    @ObservedObject var viewModel: DetailViewModel
    
    init (
        id: String
    ) {
        self.viewModel = DetailViewModel(id: id)
    }
    
    // MARK: Appear lifecycle
    func onAppear() {
        viewModel.getDataFromID()
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {}
                .background(CustomColor.White)
                .frame(height: 1)
                .frame(maxWidth: .infinity)
                
                Body_DetailScreen(viewModel: _viewModel)
            }
        }
        .navigationBarBackButtonHidden(true)
        .onAppear{
            onAppear()
        }
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(id: "52772")
    }
}
