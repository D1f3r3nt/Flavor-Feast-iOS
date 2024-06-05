import Foundation
import Combine

final class NetworkDataSource: NetworkDataSourceInterface {
    
    let networker: NetworkerInterface
    let api: MealApi
    
    init(
        networker: NetworkerInterface = Networker(),
        api: MealApi = MealApi()
    ) {
        self.api = api
        self.networker = networker
    }
    
    func getRandomMeal() -> AnyPublisher<MealRemote, Error> {
        let response = networker.callServer(
            type: GetRandomResponse.self,
            request: api.getRandomMeal()
        )
        
        return response.tryMap { response in
            if response.meals.count == 0 {
                throw URLError(.badServerResponse)
            }
            
            return response.meals[0]
        }
        .eraseToAnyPublisher()
    }
    
    func getAllCategories() -> AnyPublisher<[CategoryRemote], Error> {
        return networker.callServer(
            type: GetAllCategoriesResponse.self,
            request: api.getAllCategories()
        ).tryMap { response in
            return response.categories
        }
        .eraseToAnyPublisher()
    }
    
    func getAllAreas() -> AnyPublisher<[SingleAreaRemote], Error> {
        return networker.callServer(
            type: GetAllAreasResponse.self,
            request: api.getAllAreas()
        ).tryMap { response in
            return response.meals
        }
        .eraseToAnyPublisher()
    }
    
    func getAllIngredients() -> AnyPublisher<[IngredientsRemote], Error> {
        return networker.callServer(
            type: GetAllIngredientsResponse.self,
            request: api.getAllIngredients()
        ).tryMap { response in
            return response.meals
        }
        .eraseToAnyPublisher()
    }
    
    func getByCategory(category: String) -> AnyPublisher<[SingleMealRemote], Error> {
        return networker.callServer(
            type: GetByCategoryResponse.self,
            request: api.getByCategory(category: category)
        ).tryMap { response in
            return response.meals
        }
        .eraseToAnyPublisher()
    }
    
    func getByArea(area: String) -> AnyPublisher<[SingleMealRemote], Error> {
        return networker.callServer(
            type: GetByAreaResponse.self,
            request: api.getByArea(area: area)
        ).tryMap { response in
            return response.meals
        }
        .eraseToAnyPublisher()
    }
    
    func getByIngredient(ingredient: String) -> AnyPublisher<[SingleMealRemote], Error> {
        return networker.callServer(
            type: GetByIngredientResponse.self,
            request: api.getByIngredient(ingredient: ingredient)
        ).tryMap { response in
            return response.meals
        }
        .eraseToAnyPublisher()
    }
    
    func getByID(id: String) -> AnyPublisher<MealRemote, Error> {
        return networker.callServer(
            type: GetByIdResponse.self,
            request: api.getById(id: id)
        ).tryMap { response in
            return response.meals[0]
        }
        .eraseToAnyPublisher()
    }
    
    func getByName(searchText: String) -> AnyPublisher<[MealRemote], Error> {
        return networker.callServer(
            type: GetByNameResponse.self,
            request: api.getByName(searchText: searchText)
        ).tryMap { response in
            return response.meals ?? []
        }
        .eraseToAnyPublisher()
    }
}
