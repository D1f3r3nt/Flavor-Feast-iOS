import SwiftUI

struct InstructionsSection: View {
    let viewModel: ObservedObject<DetailViewModel>
    
    var body: some View {
        VStack(spacing: 16) {
            CustomTitle(text: "Instrutions")
            
            Text(self.viewModel.wrappedValue
                .meal?
                .instructions
                .formatWithSortuts() ?? "")
                .font(.epilogue(size: 16))
        }
        .padding(.horizontal, 16)
    }
}

struct InstructionsSection_Previews: PreviewProvider {
    static var previews: some View {
        @ObservedObject var viewModel = DetailViewModel(id: "52772")
        
        InstructionsSection(viewModel: _viewModel)
    }
}
