import Foundation

struct SingleAreaUI: Identifiable {
    var id: UUID
    let area: String
}

struct SingleAreaRemote: Codable {
    let strArea: String
    
    func toUI() -> SingleAreaUI {
        return SingleAreaUI(id: UUID(),area: self.strArea)
    }
}
