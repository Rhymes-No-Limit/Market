import Foundation

var warehouse = Warehouse()
let store = Store(warehouse: warehouse)

var banana = Product(id: UUID(), name: "Banana", price: 1.55, quantity: 150)
var apple = Product(id: UUID(), name: "Apple", price: 0.90, quantity: 100)

warehouse.addProduct(banana)
warehouse.addProduct(apple)

store.showProducts()
