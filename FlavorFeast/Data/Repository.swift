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
}
