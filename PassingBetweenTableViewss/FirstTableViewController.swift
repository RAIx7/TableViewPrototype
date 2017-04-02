//
//  ViewController.swift
//  PassingBetweenTableViewss
//
//  Created by Sanjay Rai on 02/04/2017.
//  Copyright © 2017 Sanjay Rai. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController {
    
    var colorsArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorsArray = ["Blue","Red","Yellow","Green"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorsArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = colorsArray[indexPath.row]
        return cell


    }

}

