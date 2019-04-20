//
//  Struct.swift
//  JSON Decoding
//
//  Created by Deng tianyuan on 4/19/19.
//  Copyright © 2019 Deng tianyuan. All rights reserved.
//

import Foundation

struct Product: Codable {
    var id: Int
    var category: Category
    var title: String
    var price: Float
    var stockedQuantity: Int
    
    enum Category: String, Codable {
        case Computers, Electronics, Kitchen, Pets
    }
    
}

struct  Inventory: Codable {
    var status: String
    var product: [Product]
    
}
