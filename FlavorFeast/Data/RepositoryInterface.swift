import Foundation
import Combine

protocol RepositoryInterface {
    func getRandomMeal() -> AnyPublisher<MealUI, Error>
}
