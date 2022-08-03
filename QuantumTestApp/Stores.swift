//
//  Stores.swift
//  QuantumTestApp
//
//  Created by Hitesh Suthar on 02/08/22.
//

import Foundation
struct Products: Codable, Hashable {
    let name: String
    let price: Int
    let image: String
}
struct Stores: Codable {
    let id: Int
    let storeName: String
    var products: [Products]
}
