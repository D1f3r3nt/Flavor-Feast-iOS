import Foundation
import Combine

protocol NetworkerInterface: AnyObject {
    func callServer<T>(type: T.Type, request: URLRequest) -> AnyPublisher<T, Error> where T: Decodable
}
