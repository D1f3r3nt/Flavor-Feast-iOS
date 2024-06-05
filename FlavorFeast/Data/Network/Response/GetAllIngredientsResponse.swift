import Foundation

struct GetAllIngredientsResponse: Codable {
    let meals: [IngredientsRemote]
}
