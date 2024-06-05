import Foundation

struct PlayTest {
    
    static func getMealUI() -> MealUI {
        return MealUI(
            id: "1",
            name: "Pankake",
            instructions: "Instructions",
            category: "Dessert",
            area: "British",
            image: "https://media.istockphoto.com/id/161170090/es/foto/panqueques-con-bayas-y-arce-alm%C3%ADbar.jpg?s=612x612&w=0&k=20&c=soVbuuI5ynQBM7gbf4i5o2O9WtYjhIilUnZy3603Jck=",
            tags: [],
            video: "",
            elements: [],
            source: ""
        )
    }
    
    static func getIngredientUI() -> IngredientsUI {
        return IngredientsUI(id: "1", name: "Potato", description: "Descripcion")
    }
}


