import SwiftUI

struct GeneralButton: View {
    var text: String
    var onClick: () -> Void
    
    var body: some View {
        Button(
            action: {
                onClick()
            }
        ) {
            Text(text)
                .foregroundColor(CustomColor.Black)
                .font(.epilogue(size: 16, type: .Bold))
        }
        .frame(height: 48)
        .frame(maxWidth: .infinity)
        .background(CustomColor.Green)
        .cornerRadius(24)
    }
}

struct GeneralButton_Previews: PreviewProvider {
    static var previews: some View {
        GeneralButton(
            text: "Surprise Me",
            onClick: {}
        )
    }
}
