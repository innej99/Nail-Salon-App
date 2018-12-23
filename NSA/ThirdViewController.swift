//
//  ThirdViewController.swift
//  NSA
//
//  Created by Jenni Munoz on 12/8/18.
//  Copyright © 2018 A290 Project. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    var thankYou: String = ""
    @IBOutlet weak var thankYouLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        thankYouLabel?.text = thankYou
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
