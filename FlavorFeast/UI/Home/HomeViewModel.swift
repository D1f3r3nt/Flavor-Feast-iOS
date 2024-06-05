import Foundation
import Combine

final class HomeViewModel: ObservableObject {
    @Published var randomState: Status = .idle
    @Published var randomMeal: MealUI? = nil
    
    var suscriptors = Set<AnyCancellable>()
    var repository: RepositoryInterface
    
    init(
        repository: RepositoryInterface = Repository()
    ) {
        self.repository = repository
        
        getRandomMeal()
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
}
