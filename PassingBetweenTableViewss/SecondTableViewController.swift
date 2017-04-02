//
//  SecondTableViewController.swift
//  PassingBetweenTableViewss
//
//  Created by Sanjay Rai on 02/04/2017.
//  Copyright © 2017 Sanjay Rai. All rights reserved.
//

import Foundation
import  UIKit

class SecondTableViewController: UITableViewController {
   
    
    var secondArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return secondArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = self.tableView.dequeueReusableCell(withIdentifier: "cellTwo", for: indexPath) as UITableViewCell
        cell.textLabel?.text = secondArray[indexPath.row]
        return cell
    }
    
    
    
    
}
