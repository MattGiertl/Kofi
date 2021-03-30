//
//  Order.swift
//  Kofi
//
//  Created by Giertl Matus on 30.03.2021.
//

import Foundation

struct Order: Codable {
    let name: String
    let coffeeName: String
    let total: Double
    let size: Double
}
