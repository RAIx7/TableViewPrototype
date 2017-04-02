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
    var secondColorsArray = [SecondTable]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorsArray = ["Blue","Red","Yellow","Green"]
        secondColorsArray = [SecondTable(subColor: ["BlueOne","BlueTwo","BlueThree"]), SecondTable(subColor: ["RedOne","RedTwo","RedThree"]), SecondTable(subColor: ["YellowOne","YellowTwo","YellowThree"]), SecondTable(subColor: ["GreenOne","GreenTwo","GreenThree"])]
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
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var indexPath : IndexPath = self.tableView.indexPathForSelectedRow!
        var destinationViewController = segue.destination as! SecondTableViewController
        var secondColorsTableArray : SecondTable
        
        secondColorsTableArray = secondColorsArray[indexPath.row]
        destinationViewController.secondArray = secondColorsTableArray.subColor
        
        
    }

}

