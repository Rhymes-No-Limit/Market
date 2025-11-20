import Foundation

struct Product {
    let id: UUID
    let name: String
    let price: Double
    var quantity: Int
    
    mutating func changeQuantity(by quantity: Int) {
        self.quantity += quantity
    }
}
