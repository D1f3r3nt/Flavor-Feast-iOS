import Foundation
import Combine

protocol NetworkDataSourceInterface {
    func getRandomMeal() -> AnyPublisher<MealRemote, Error>
    func getAllCategories() -> AnyPublisher<[CategoryRemote], Error>
    func getAllAreas() -> AnyPublisher<[SingleAreaRemote], Error>
    func getAllIngredients() -> AnyPublisher<[IngredientsRemote], Error>
    func getByCategory(category: String) -> AnyPublisher<[SingleMealRemote], Error>
    func getByArea(area: String) -> AnyPublisher<[SingleMealRemote], Error>
    func getByIngredient(ingredient: String) -> AnyPublisher<[SingleMealRemote], Error>
    func getByID(id: String) -> AnyPublisher<MealRemote, Error>
    func getByName(searchText: String) -> AnyPublisher<[MealRemote], Error>
}
