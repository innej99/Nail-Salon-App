//
//  FourthViewController.swift
//  NSA
//
//  Created by Jenni Munoz on 12/10/18.
//  Copyright © 2018 A290 Project. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var serviceLabel: UILabel!
    @IBOutlet var viewButton: UIButton!
    var myModel = NSAModel()
    
    @IBAction func showName(_ sender: Any){
        self.nameLabel.text = "Name: \(myModel.showName())"
        self.serviceLabel.text = "Service:  \(myModel.showService())"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
