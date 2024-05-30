//
//  ArrayUtils.swift
//  FlavorFeast
//
//  Created by Marc Santisteban Ruiz on 30/5/24.
//

import Foundation

extension Array {
    func take(_ amount: Int) -> Array {
        let grabCuantity = Swift.min(self.count, amount)
        
        return Array(self.prefix(grabCuantity))
    }
}
