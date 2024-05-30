import SwiftUI

struct Sections_HomeScreen: View {
    var body: some View {
        VStack(
            spacing: 26
        ) {
            RandomSection()
            
            IngredientsSection(
                onFocus: {}
            )
            
            AreaSection()
            
            CategorySection()
        }
    }
}

struct Sections_HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        Sections_HomeScreen()
    }
}
