//
//  ContentView.swift
//  Kofi
//
//  Created by Giertl Matus on 30.03.2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var orderListVM = OrderListViewModel()
    
    var body: some View {
        NavigationView {
            OrderListView(orders: orderListVM.orders)
                .navigationBarTitle("Order list")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
