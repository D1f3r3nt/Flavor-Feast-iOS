import Foundation
import Combine

final class HomeViewModel: ObservableObject {
    @Published var randomState: Status = .idle
    @Published var categoriesState: Status = .idle
    @Published var areasState: Status = .idle
    @Published var ingredientsState: Status = .idle
    @Published var randomMeal: MealUI? = nil
    @Published var categories: [CategoryUI] = []
    @Published var areas: [SingleAreaUI] = []
    @Published var ingredients: [IngredientsUI] = []
    @Published var searchText: String = ""
    @Published var searchMeals: [MealUI] = []
    
    var suscriptors = Set<AnyCancellable>()
    var repository: RepositoryInterface
    
    init(
        repository: RepositoryInterface = Repository()
    ) {
        self.repository = repository
        
        getRandomMeal()
        getAllAreas()
        getAllCategories()
    }
    
    func getRandomMeal() {
        self.randomState = .loading
        
        repository.getRandomMeal()
            .sink { completion in
                switch completion {
                    case .failure(let error):
                        print(error)
                        self.randomState = .error(error: "Error with the request")
                    case .finished:
                        self.randomState = .idle
                }
            } receiveValue: { meal in
                self.randomMeal = meal
            }
            .store(in: &suscriptors)
    }
    
    func getAllIngredients() {
        ingredientsState = .loading
        
        repository.getAllIngredients()
            .sink { completion in
                switch completion {
                    case .failure:
                        self.ingredientsState = .error(error: "Error with request")
                    case .finished:
                        self.ingredientsState = .idle
                }
            } receiveValue: { ingredients in
                self.ingredients = ingredients
            }
            .store(in: &suscriptors)

    }
    
    func onSearchTextChange(text: String) {
        searchText = text
        
        if text == "" {
            searchMeals = []
        } else {
            getByName()
        }
    }
    
    private func getByName() {
        repository.getByName(searchText: searchText)
            .sink { completion in
                
                switch completion {
                    case .failure:
                        self.searchMeals = []
                    case .finished:
                        print("Okey")
                }
                
            } receiveValue: { meals in
                self.searchMeals = meals
            }
            .store(in: &suscriptors)
    }
    
    private func getAllAreas() {
        self.areasState = .loading
        
        repository.getAllAreas()
            .sink { completion in
                switch completion {
                case .failure:
                    self.areasState = .error(error: "Error with request")
                case .finished:
                    self.areasState = .idle
                }
            } receiveValue: { areas in
                self.areas = areas
            }
            .store(in: &suscriptors)
    }
    
    private func getAllCategories() {
        self.categoriesState = .loading
        
        repository.getAllCategories()
            .sink { completion in
                switch completion {
                case .failure:
                    self.categoriesState = .error(error: "Error with request")
                case .finished:
                    self.categoriesState = .idle
                }
            } receiveValue: { categories in
                self.categories = categories
            }
            .store(in: &suscriptors)
    }
}
