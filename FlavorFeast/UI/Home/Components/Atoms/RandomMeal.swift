import SwiftUI

struct RandomMeal: View {
    
    let image = "https://t3.ftcdn.net/jpg/03/01/97/86/360_F_301978652_O0aPwap1JaEVaAhj3mIlbqNnJGmRyCzC.jpg"
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            VStack(
                alignment: .leading,
                spacing: 8
            ) {
                Text("Chocolate Cake")
                    .foregroundColor(CustomColor.Black)
                    .lineLimit(1)
                    .font(.epilogue(size: 16, type: .Bold))
            
                Text("Dessert")
                    .foregroundColor(CustomColor.Gray)
                    .lineLimit(1)
                    .font(.epilogue(size: 14))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            AsyncImage(url: URL(string: image))
                .frame(width: 103, height: 58)
                .cornerRadius(12)
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
        RandomMeal()
    }
}
