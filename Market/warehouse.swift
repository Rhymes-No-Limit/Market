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
        guard var product = products[id] else {
            print("Product not found.")
            return }
        product.changeQuantity(by: amount)
        
        if product.quantity <= 0 {
            products.removeValue(forKey: id)
            print("Product \(product.name) removed from warehouse - quantity reached 0.")
        }
        products[id] = product
    }
    
}
