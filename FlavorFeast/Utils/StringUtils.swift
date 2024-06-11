import Foundation

extension String {
    func formatWithSortuts() -> String {
        return self
            .replacingOccurrences(of: "\t", with: "    ")
            .replacingOccurrences(of: "\r", with: "\n")
    }
}
