//
//  InventoryItem.swift
//  codableJSON
//
//  Created by Aaron Henry on 11/7/19.
//  Copyright © 2019 Aaron Henry. All rights reserved.
//

import Foundation

struct InventoryItem: Codable {
    var id: Int
    var category: String
    var title: String
    var price: Double
    var stockedQuantity: Int
    
}


