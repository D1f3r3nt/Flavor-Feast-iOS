import SwiftUI

struct DetailScreen: View {
    
    @ObservedObject var viewModel: DetailViewModel
    
    // MARK: Appear lifecycle
    func onAppear() {
        viewModel.getDataFromID()
    }
    
    var body: some View {
        NavigationStack {
            Body_DetailScreen(viewModel: _viewModel)
        }
        .navigationBarBackButtonHidden(true)
        .onAppear{
            onAppear()
        }
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(viewModel: DetailViewModel(id: "52772"))
    }
}
