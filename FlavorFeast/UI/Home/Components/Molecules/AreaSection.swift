import SwiftUI

struct AreaSection: View {
    var body: some View {
        VStack(spacing: 16) {
            CustomTitle(text: "Recipes by area")
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach((1...10), id: \.self) {
                        FoodCard(text: "\($0)")
                    }
                }
            }
        }
    }
}

struct AreaSection_Previews: PreviewProvider {
    static var previews: some View {
        AreaSection()
    }
}
