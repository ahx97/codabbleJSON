//
//  JSOnParseDataViewController.swift
//  codableJSON
//
//  Created by Aaron Henry on 11/4/19.
//  Copyright © 2019 Aaron Henry. All rights reserved.
//

import UIKit

class JSOnParseDataViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    @IBOutlet weak var InventoryTablbeView: UITableView!
    
    var products = [InventoryItem]()
    
    let jsonFileName = "inventory"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let fileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json")
        print(fileUrl!);
        
        if let data = try? Data(contentsOf: fileUrl!){
            parse(json: data)
        }
        
        print(products.count)
        
     }
    
    

    func parse(json: Data){
        let decoder = JSONDecoder()
        
        if let jsonProducts = try? decoder.decode(InventoryItmes.self, from: json){
            products = jsonProducts.products
            InventoryTablbeView.reloadData()
        }
        
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = InventoryTablbeView.dequeueReusableCell(withIdentifier: "InventoryCell", for: indexPath)
        let product = products[indexPath.row]
        cell.textLabel?.text = product.title
        cell.detailTextLabel?.text = "count: \(String(product.stockedQuantity))"
        
        return cell
    }
    
        // Do any additional setup after loading the view.
    
}
