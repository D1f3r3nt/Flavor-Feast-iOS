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
}
