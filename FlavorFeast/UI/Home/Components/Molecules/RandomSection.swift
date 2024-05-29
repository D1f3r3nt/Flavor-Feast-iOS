import SwiftUI

struct RandomSection: View {
    var body: some View {
        VStack {
            GeneralButton(
                text: "Surprise Me",
                onClick: {}
            )
            
            // TODO: meal != nil
            if true {
                Spacer(minLength: 12)
                
                RandomMeal()
            }
        }
    }
}

struct RandomSection_Previews: PreviewProvider {
    static var previews: some View {
        RandomSection()
    }
}
