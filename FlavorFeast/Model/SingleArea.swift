import Foundation

struct SingleAreaUI {
    let area: String
}

struct SingleAreaRemote: Codable {
    let strArea: String
    
    func toUI() -> SingleAreaUI {
        return SingleAreaUI(area: self.strArea)
    }
}
