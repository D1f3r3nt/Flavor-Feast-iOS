import Foundation

struct IngredientsUI {
    let id: String
    let name: String
    let description: String
}

struct IngredientsRemote: Codable {
    let idIngredient: String
    let strIngredient: String
    let strDescription: String?
    let strType: String?
    
    func toUI() -> IngredientsUI {
        return IngredientsUI(
            id: self.idIngredient,
            name: self.strIngredient,
            description: self.strDescription ?? ""
        )
    }
}
