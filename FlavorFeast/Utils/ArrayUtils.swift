import Foundation

extension Array {
    func take(_ amount: Int) -> Array {
        let grabCuantity = Swift.min(self.count, amount)
        
        return Array(self.prefix(grabCuantity))
    }
}
