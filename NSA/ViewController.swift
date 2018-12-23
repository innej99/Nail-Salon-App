//
//  ViewController.swift
//  NSA
//
//  Created by Jenni Munoz on 12/8/18.
//  Copyright © 2018 A290 Project. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
    
    var servicesDict = ["Manicure $12": 12, "Gel Manicure $30": 30, "Pedicure $25": 25, "Acrylic Full Set $35+": 35, "Acrylic Fill in $25+": 25, "Acrylic Nail Fix $3+": 3, "Pink & White $45+": 45, "Acrylic Removal $5+": 5]
    
    var total = 0
    
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var cost: UILabel!

    
//    SERVICES
    
//    sets number of rows = size of dictionary. in this case, 8 rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return servicesDict.count
    }
    
//    creates cells with keys from dictionary
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = Array(servicesDict)[indexPath.row].key
        cell.selectionStyle = .none
        return cell
    }
    
//    when rows are selected, adds dictionary value to total array, updates cost text to total
//    places checkmark
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        total += Array(servicesDict)[indexPath.row].value
        cost.text = "$ \(total)"
        
        if let cell = tableView.cellForRow(at: indexPath) {
            cell.accessoryType = .checkmark
        }
    }
    
//    subtracts dictionary value from total array, updates cost text to total
//    removes checkmark
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        total -= Array(servicesDict)[indexPath.row].value
        cost.text = "$ \(total)"
        
        if let cell = tableView.cellForRow(at: indexPath) {
            cell.accessoryType = .none
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.delegate = self
        myTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

