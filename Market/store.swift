import Foundation

final class Store {
    private var warehouse: Warehouse
    private var productInWarehouse: [Product] {
        Array(warehouse.products.values)
    }
    
    init(warehouse: Warehouse) {
        self.warehouse = warehouse
    }
    //Минимальные методы: показать товары, купить товар, проверить количество
    func showProducts() {
        for product in productInWarehouse {
            print("Store has: \(product.name) - \(product.quantity) count")
        }
    }
    
    func buyProduct(id: UUID, quantity: Int) {
        warehouse.updateQuantity(for: id, by: quantity)
    }
    
}
