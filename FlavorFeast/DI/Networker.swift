import Foundation
import Combine

final class Networker: NetworkerInterface {
    func callServer<T>(type: T.Type, request: URLRequest) -> AnyPublisher<T, Error> where T : Decodable {
        print("CALL \(request.url?.absoluteString ?? "nil")")
        
        return URLSession.shared
            .dataTaskPublisher(for: request)
            .tryMap {
                guard let response = $0.response as? HTTPURLResponse,
                      response.statusCode == 200 else {
                    throw URLError(.badServerResponse)
                }
                
                return $0.data
            }
            .decode(type: T.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
