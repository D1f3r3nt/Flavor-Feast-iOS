import Foundation

struct SingleMealUI {
    let name: String
    let image: String
    let id: String
}

struct SingleMealRemote: Codable {
    let strMeal: String
    let strMealThumb: String
    let idMeal: String
    
    func toUI() -> SingleMealUI {
        return SingleMealUI(
            name: self.strMeal,
            image: self.strMealThumb,
            id: self.idMeal
        )
    }
}
