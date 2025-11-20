import Foundation

struct Warehouse {
    private(set) var products: [UUID : Product] = [:]
    
    func product(with id: UUID) -> Product? {
        return products[id]
    }
    
    func quantity(for id: UUID) -> Int? {
        return products[id]?.quantity
    }
    
    mutating func addProduct(_ product: Product) {
        products[product.id] = product
    }
    
    mutating func updateQuantity(for id: UUID, by amount: Int) {
        guard var product = products[id] else { return }
        product.changeQuantity(by: amount)
        products[id] = product
    }
    
}
