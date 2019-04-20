//
//  InverntoryLoader.swift
//  JSON Decoding
//
//  Created by Deng tianyuan on 4/19/19.
//  Copyright © 2019 Deng tianyuan. All rights reserved.
//

import Foundation

class InventoryLoader {
    class func load(jsonFileName: String) -> Inventory?{
        var inventory: Inventory?
        let jsonDecoder = JSONDecoder()
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"), let jsonData = try?Data(contentsOf: jsonFileUrl) {
            inventory = try? jsonDecoder.decode(Inventory.self, from: jsonData)
        }
        return nil
    }
}
