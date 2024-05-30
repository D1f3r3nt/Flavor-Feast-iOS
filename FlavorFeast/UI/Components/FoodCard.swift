import SwiftUI

struct FoodCard: View {
    var text: String
    var onClick: () -> Void = {}
    
    let image = "https://media.istockphoto.com/id/1457433817/es/foto/grupo-de-alimentos-saludables-para-la-dieta-flexitariana.jpg?s=612x612&w=0&k=20&c=2w5l2DEJWFGxSnmJxX_RCE40RriE7WtSoKKpuxw5luE="
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            AsyncImage(url: URL(string: image)) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 160, height: 90)
            .cornerRadius(12)
            
            Text(text)
                .foregroundColor(CustomColor.Black)
        }
        .onTapGesture {
            onClick()
        }
    }
}

struct FoodCard_Previews: PreviewProvider {
    static var previews: some View {
        FoodCard(text: "Food")
    }
}
