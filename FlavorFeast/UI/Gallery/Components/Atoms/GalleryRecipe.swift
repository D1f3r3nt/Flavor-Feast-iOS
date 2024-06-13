import SwiftUI

struct GalleryRecipe: View {
    var size: CGFloat = 240
    let meal: SingleMealUI
    
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            AsyncImage(url: URL(string: meal.image)) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                ProgressView()
            }
            .frame(width: size, height: size)
            .cornerRadius(12)
            
            Text(meal.name)
                .font(.epilogue(size: 16, type: .Medium))
                .foregroundColor(CustomColor.Black)
                .lineLimit(1)
            
            Text("#\(meal.id)")
                .font(.epilogue(size: 14))
                .foregroundColor(CustomColor.Gray)
                .lineLimit(1)
        }
        .frame(maxWidth: size)
    }
}

struct GalleryRecipe_Previews: PreviewProvider {
    static var previews: some View {
        GalleryRecipe(meal: PlayTest.getSingleMealUI())
    }
}
