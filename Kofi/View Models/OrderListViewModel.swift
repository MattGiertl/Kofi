//
//  OrderListViewModel.swift
//  Kofi
//
//  Created by Giertl Matus on 30.03.2021.
//

import Foundation

class OrderListViewModel: ObservableObject {
    var orders = [OrderViewModel]()
    
    init() {
        fetchOrders()
    }
    
    func fetchOrders() {
        WebService().getAllOrders { orders in
            if let orders = orders {
                self.orders = orders.map(OrderViewModel.init)
            }
        }
    }
}

class OrderViewModel {
    let id = UUID()
    var order: Order
    
    init(order: Order) {
        self.order = order
    }
    
    var name: String {
        return self.order.name
    }
    
    var size: Double {
        return self.order.size
    }
    
    var coffeeName: String {
        return self.order.coffeeName
    }
    
    var total: Double {
        return self.order.total
    }
}
