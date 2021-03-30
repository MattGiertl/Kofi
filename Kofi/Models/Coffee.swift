//
//  Coffee.swift
//  Kofi
//
//  Created by Giertl Matus on 30.03.2021.
//

import Foundation

struct Coffee {
    let name: String
    let imageURL: String
    let price: Double
    
    static func all() -> [Coffee] {
        return [
            Coffee(name: "Cappuccino", imageURL: "Cappuccino", price: 2.5),
            Coffee(name: "Espresso", imageURL: "Espresso", price: 2.1),
            Coffee(name: "Regular", imageURL: "Regular", price: 1.0)
        ]
    }
}
