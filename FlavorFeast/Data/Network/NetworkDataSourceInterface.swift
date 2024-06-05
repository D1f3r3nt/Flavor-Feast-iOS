import Foundation
import Combine

protocol NetworkDataSourceInterface {
    func getRandomMeal() -> AnyPublisher<MealRemote, Error>
    
}
