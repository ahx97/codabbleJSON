//
//  InventoryCollectionLoader.swift
//  codableJSON
//
//  Created by Aaron Henry on 11/4/19.
//  Copyright © 2019 Aaron Henry. All rights reserved.
//

import Foundation

class InventorySetLoader {
    
    class func load(jsonFileName: String) -> PhotoSet? {
        var photoSet: PhotoSet?
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileUrl) {
            photoSet = try? jsonDecoder.decode(PhotoSet.self, from: jsonData)
        }
        
        return photoSet
    }
}
