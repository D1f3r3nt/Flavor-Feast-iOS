import Foundation
import Combine

protocol RepositoryInterface {
    func getRandomMeal() -> AnyPublisher<MealUI, Error>
    func getAllCategories() -> AnyPublisher<[CategoryUI], Error>
    func getAllAreas() -> AnyPublisher<[SingleAreaUI], Error>
    func getAllIngredients() -> AnyPublisher<[IngredientsUI], Error>
    func getByCategory(category: String) -> AnyPublisher<[SingleMealUI], Error>
    func getByArea(area: String) -> AnyPublisher<[SingleMealUI], Error>
    func getByIngredient(ingredient: String) -> AnyPublisher<[SingleMealUI], Error>
    func getByID(id: String) -> AnyPublisher<MealUI, Error>
    func getByName(searchText: String) -> AnyPublisher<[MealUI], Error>
}
