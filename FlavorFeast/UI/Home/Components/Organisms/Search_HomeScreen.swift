import SwiftUI

struct Search_HomeScreen: View {
    let list = ["Hola", "Adios"]
    
    var body: some View {
        VStack {
            SearchTitle(text: "Recipes")
            
            ForEach(list, id: \.self) { item in
                SearchRow(text: item)
            }
        }
        .padding(.horizontal, 16)
    }
}

struct Search_HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        Search_HomeScreen()
    }
}
