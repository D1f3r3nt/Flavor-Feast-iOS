import Foundation

enum Status: Equatable {
case idle, loading, error(error: String)
}
