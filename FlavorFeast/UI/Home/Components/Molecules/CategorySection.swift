import SwiftUI

struct CategorySection: View {
    var body: some View {
        VStack(spacing: 16) {
            CustomTitle(text: "Recipes by category")
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach((11...20), id: \.self) {
                        FoodCard(text: "\($0)")
                    }
                }
            }
        }
    }
}

struct CategorySection_Previews: PreviewProvider {
    static var previews: some View {
        CategorySection()
    }
}
