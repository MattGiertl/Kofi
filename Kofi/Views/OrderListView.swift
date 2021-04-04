//
//  OrderListView.swift
//  Kofi
//
//  Created by Giertl Matus on 01.04.2021.
//

import SwiftUI

struct OrderListView: View {
    let orders: [OrderViewModel]
    
    init(orders: [OrderViewModel]) {
        self.orders = orders
    }
    
    let imageSize: CGFloat = 100
    let basePadding: CGFloat = 10
    
    var body: some View {
        List {
            ForEach(orders, id: \.id) { order in
                HStack {
                    Image(order.coffeeName)
                        .resizable()
                        .frame(width: imageSize, height: imageSize)
                        .cornerRadius(16)
                    VStack {
                        Text(order.name)
                            .font(.title)
                            .padding([.leading, .bottom], basePadding)
                        
                        HStack {
                            Text(order.coffeeName)
                                .padding(basePadding)
                                .background(Color.gray)
                                .foregroundColor(.white)
                                .cornerRadius(basePadding)
                        }
                    }
                }
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(
            orders:
                [
                    OrderViewModel(
                        order: Order(
                            name: "Mary",
                            coffeeName: "Cappuccino",
                            total: 3.5,
                            size: "medium"
                        )
                    )
                ]
        )
    }
}
