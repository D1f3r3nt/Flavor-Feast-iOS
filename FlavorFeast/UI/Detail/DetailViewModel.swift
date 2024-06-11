import Foundation
import Combine

final class DetailViewModel: ObservableObject {
    @Published var idMeal: String? = nil
    @Published var meal: MealUI? = nil
    @Published var mealState: Status = .idle
    
    var suscriptors = Set<AnyCancellable>()
    var repository: RepositoryInterface
    
    init(
        repository: RepositoryInterface = Repository(),
        id: String
    ) {
        self.repository = repository
        self.idMeal = id
    }
    
    func getDataFromID() {
        self.mealState = .loading
        
        guard let id = self.idMeal else {
            return
        }
        
        repository.getByID(id: id)
            .sink { completion in
                switch completion {
                case .failure:
                    self.mealState = .error(error: "Error with the request")
                case .finished:
                    self.mealState = .idle
                }
            } receiveValue: { meal in
                self.meal = meal
            }
            .store(in: &suscriptors)
    }
}
