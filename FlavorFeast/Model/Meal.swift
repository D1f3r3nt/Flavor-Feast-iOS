import Foundation

struct MealUI: Identifiable {
    let id: String
    let name: String
    let instructions: String
    let category: String
    let area: String
    let image: String
    let tags: [String]
    let video: String
    let elements: [ComponentUI]
    let source: String
}

struct ComponentUI: Identifiable {
    let id: UUID = UUID()
    let ingredient: String
    let measure: String
}

struct MealRemote: Codable {
    let idMeal: String
    let strMeal: String
    let strDrinkAlternate: String?
    let strCategory: String
    let strArea: String
    let strInstructions: String
    let strMealThumb: String
    let strTags: String?
    let strYoutube: String
    let strIngredient1: String?
    let strIngredient2: String?
    let strIngredient3: String?
    let strIngredient4: String?
    let strIngredient5: String?
    let strIngredient6: String?
    let strIngredient7: String?
    let strIngredient8: String?
    let strIngredient9: String?
    let strIngredient10: String?
    let strIngredient11: String?
    let strIngredient12: String?
    let strIngredient13: String?
    let strIngredient14: String?
    let strIngredient15: String?
    let strIngredient16: String?
    let strIngredient17: String?
    let strIngredient18: String?
    let strIngredient19: String?
    let strIngredient20: String?
    let strMeasure1: String?
    let strMeasure2: String?
    let strMeasure3: String?
    let strMeasure4: String?
    let strMeasure5: String?
    let strMeasure6: String?
    let strMeasure7: String?
    let strMeasure8: String?
    let strMeasure9: String?
    let strMeasure10: String?
    let strMeasure11: String?
    let strMeasure12: String?
    let strMeasure13: String?
    let strMeasure14: String?
    let strMeasure15: String?
    let strMeasure16: String?
    let strMeasure17: String?
    let strMeasure18: String?
    let strMeasure19: String?
    let strMeasure20: String?
    let strSource: String?
    let strImageSource: String?
    let strCreativeCommonsConfirmed: String?
    let dateModified: String?
    
    func toUI() -> MealUI {
        var tags: [String] = []
        if let tag = self.strTags {
            tag.split(separator: ",").forEach { t in
                tags.append(String(t))
            }
        }
        
        let elements = [
            ComponentUI(ingredient: self.strIngredient1 ?? "", measure: self.strMeasure1 ?? ""),
            ComponentUI(ingredient: self.strIngredient2 ?? "", measure: self.strMeasure2 ?? ""),
            ComponentUI(ingredient: self.strIngredient3 ?? "", measure: self.strMeasure3 ?? ""),
            ComponentUI(ingredient: self.strIngredient4 ?? "", measure: self.strMeasure4 ?? ""),
            ComponentUI(ingredient: self.strIngredient5 ?? "", measure: self.strMeasure5 ?? ""),
            ComponentUI(ingredient: self.strIngredient6 ?? "", measure: self.strMeasure6 ?? ""),
            ComponentUI(ingredient: self.strIngredient7 ?? "", measure: self.strMeasure7 ?? ""),
            ComponentUI(ingredient: self.strIngredient8 ?? "", measure: self.strMeasure8 ?? ""),
            ComponentUI(ingredient: self.strIngredient9 ?? "", measure: self.strMeasure9 ?? ""),
            ComponentUI(ingredient: self.strIngredient10 ?? "", measure: self.strMeasure10 ?? ""),
            ComponentUI(ingredient: self.strIngredient11 ?? "", measure: self.strMeasure11 ?? ""),
            ComponentUI(ingredient: self.strIngredient12 ?? "", measure: self.strMeasure12 ?? ""),
            ComponentUI(ingredient: self.strIngredient13 ?? "", measure: self.strMeasure13 ?? ""),
            ComponentUI(ingredient: self.strIngredient14 ?? "", measure: self.strMeasure14 ?? ""),
            ComponentUI(ingredient: self.strIngredient15 ?? "", measure: self.strMeasure15 ?? ""),
            ComponentUI(ingredient: self.strIngredient16 ?? "", measure: self.strMeasure16 ?? ""),
            ComponentUI(ingredient: self.strIngredient17 ?? "", measure: self.strMeasure17 ?? ""),
            ComponentUI(ingredient: self.strIngredient18 ?? "", measure: self.strMeasure18 ?? ""),
            ComponentUI(ingredient: self.strIngredient19 ?? "", measure: self.strMeasure19 ?? ""),
            ComponentUI(ingredient: self.strIngredient20 ?? "", measure: self.strMeasure20 ?? ""),
        ]
        
        return MealUI(
            id: self.idMeal,
            name: self.strMeal,
            instructions: self.strInstructions,
            category: self.strCategory,
            area: self.strArea,
            image: self.strMealThumb,
            tags: tags,
            video: self.strYoutube,
            elements: elements,
            source: self.strSource ?? ""
        )
    }
}
