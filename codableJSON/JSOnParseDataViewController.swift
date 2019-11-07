//
//  JSOnParseDataViewController.swift
//  codableJSON
//
//  Created by Aaron Henry on 11/4/19.
//  Copyright © 2019 Aaron Henry. All rights reserved.
//

import UIKit

class JSOnParseDataViewController: UIViewController {
    
    
    @IBOutlet weak var InventoryTablbeView: UITableView!
    
    let jsonFileName = "inventory"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let inventorySet = InventorySetLoader.load(jsonFileName: jsonFileName)
       // print(inventorySet?.status)
        print(inventorySet?.inventory.count)
        /*
     if let inventorySet = InventorySetLoader.load(jsonFileName: jsonFileName) {
        print("\(inventorySet.status)")
            
             var displayInfo = ""
             displayInfo += "Status: \(inventorySet.status)\n"
             displayInfo += "Inventory path: \(inventorySet.inventoryPath)\n\n"
        
             for inventory in inventorySet.inventory {
                
                let cell = InventoryTablbeView.dequeueReusableCell(withIdentifier: "InventoryCell")
                
                
                cell?.detailTextLabel?.text = String(inventory.stockedQuantity)
                cell?.textLabel?.text = inventory.title
                
                displayInfo += "Inventory:\n"
                displayInfo += "\(inventory.title)\n"
                displayInfo += "\(inventory.id)\n"
                displayInfo += "\(inventory.category)\n"
                displayInfo += "\(inventory.price)\n"
                displayInfo += "\(inventory.stockedQuantity)\n"
                
             }
             //displayTextView.text = displayInfo
            print(displayInfo)
         } else {
            print("error\n")
            
             //displayTextView.text = "Error."
         }*/
     }

        // Do any additional setup after loading the view.
/*
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InventoryCell", for: indexPath)
        
        cell.
        
        cell.textLabel?.text = headlines[indexPath.row].title
        
        return cell
    }
*/
}
