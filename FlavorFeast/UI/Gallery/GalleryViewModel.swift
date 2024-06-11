import Foundation
import Combine

final class GalleryViewModel: ObservableObject {
    @Published var type: GalleryTypes? = nil
    @Published var nameType: String? = nil
    @Published var newMeals: [SingleMealUI] = []
    @Published var meals: [SingleMealUI] = []
    @Published var mealState: Status = .idle
    
    var suscriptors = Set<AnyCancellable>()
    var repository: RepositoryInterface
    
    init(
        repository: RepositoryInterface = Repository(),
        type: GalleryTypes,
        nameType: String
    ) {
        self.repository = repository
        self.type = type
        self.nameType = nameType
    }
    
    func obtainData() {
        self.mealState = .loading
        
        var callInfo: AnyPublisher<[SingleMealUI], Error>? = nil
        
        switch self.type {
        case .AREA:
            callInfo = repository.getByArea(area: self.nameType!)
            
        case .INGREDIENTS:
            callInfo = repository.getByIngredient(ingredient: self.nameType!)
            
        case .CATEGORY:
            callInfo = repository.getByCategory(category: self.nameType!)
            
        default:
            callInfo = nil
        }
        
        callInfo?.sink { completion in
            switch completion {
                case .failure(let error):
                    print(error)
                    self.mealState = .error(error: "Error with the request")
                case .finished:
                    self.mealState = .idle
            }
        } receiveValue: { meals in
            self.newMeals = meals.take(5)
            if meals.count <= 5 {
                self.meals = []
            } else {
                self.meals = Array(meals.suffix(from: 5))
            }
        }
        .store(in: &suscriptors)
    }
}
