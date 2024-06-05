import Foundation
import Combine

final class Repository: RepositoryInterface {
    
    let networkDataSource: NetworkDataSourceInterface
    
    init(
        networkDataSource: NetworkDataSourceInterface = NetworkDataSource()
    ) {
        self.networkDataSource = networkDataSource
    }
    
    func getRandomMeal() -> AnyPublisher<MealUI, Error> {
        return networkDataSource
            .getRandomMeal()
            .tryMap { response in
                return response.toUI()
            }
            .eraseToAnyPublisher()
    }
    
    func getAllCategories() -> AnyPublisher<[CategoryUI], Error> {
        return networkDataSource
            .getAllCategories()
            .tryMap { response in
                return response.map { $0.toUI() }
            }
            .eraseToAnyPublisher()
    }
    
    func getAllAreas() -> AnyPublisher<[SingleAreaUI], Error> {
        return networkDataSource
            .getAllAreas()
            .tryMap { response in
                return response.map { $0.toUI() }
            }
            .eraseToAnyPublisher()
    }
    
    func getAllIngredients() -> AnyPublisher<[IngredientsUI], Error> {
        return networkDataSource
            .getAllIngredients()
            .tryMap { response in
                return response.map { $0.toUI() }
            }
            .eraseToAnyPublisher()
    }
    
    func getByCategory(category: String) -> AnyPublisher<[SingleMealUI], Error> {
        return networkDataSource
            .getByCategory(category: category)
            .tryMap { response in
                return response.map { $0.toUI() }
            }
            .eraseToAnyPublisher()
    }
    
    func getByArea(area: String) -> AnyPublisher<[SingleMealUI], Error> {
        return networkDataSource
            .getByArea(area: area)
            .tryMap { response in
                return response.map { $0.toUI() }
            }
            .eraseToAnyPublisher()
    }
    
    func getByIngredient(ingredient: String) -> AnyPublisher<[SingleMealUI], Error> {
        return networkDataSource
            .getByIngredient(ingredient: ingredient)
            .tryMap { response in
                return response.map { $0.toUI() }
            }
            .eraseToAnyPublisher()
    }
    
    func getByID(id: String) -> AnyPublisher<MealUI, Error> {
        return networkDataSource
            .getByID(id: id)
            .tryMap { response in
                return response.toUI()
            }
            .eraseToAnyPublisher()
    }
    
    func getByName(searchText: String) -> AnyPublisher<[MealUI], Error> {
        return networkDataSource
            .getByName(searchText: searchText)
            .tryMap { response in
                return response.map { $0.toUI() }
            }
            .eraseToAnyPublisher()
    }
}
