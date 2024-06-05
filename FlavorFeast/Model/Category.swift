import Foundation

struct CategoryUI {
    let id: String
    let name: String
    let image: String
    let description: String
}

struct CategoryRemote: Codable {
    let idCategory: String
    let strCategory: String
    let strCategoryThumb: String
    let strCategoryDescription: String
    
    func toUI() -> CategoryUI {
        return CategoryUI(
            id: self.idCategory,
            name: self.strCategory,
            image: self.strCategoryThumb,
            description: self.strCategoryDescription
        )
    }
}
