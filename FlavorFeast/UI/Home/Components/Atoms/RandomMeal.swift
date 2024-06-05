import SwiftUI

struct RandomMeal: View {
    var onClick: () -> Void = {}
    var meal: MealUI
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            VStack(
                alignment: .leading,
                spacing: 8
            ) {
                Text(meal.name)
                    .foregroundColor(CustomColor.Black)
                    .lineLimit(1)
                    .font(.epilogue(size: 16, type: .Bold))
            
                Text(meal.category)
                    .foregroundColor(CustomColor.Gray)
                    .lineLimit(1)
                    .font(.epilogue(size: 14))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            AsyncImage(url: URL(string: meal.image)) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 103, height: 58)
            .cornerRadius(12)
        }
        .onTapGesture {
            onClick()
        }
        .padding(16)
        .frame(maxWidth: .infinity)
        .background(CustomColor.White)
        .cornerRadius(12)
        .shadow(radius: 12, x: 0, y: 0)
    }
}

struct RandomMeal_Previews: PreviewProvider {
    static var previews: some View {
        RandomMeal(meal: PlayTest.getMealUI())
    }
}
