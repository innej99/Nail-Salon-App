//
//  SecondViewController.swift
//  NSA
//
//  Created by Jenni Munoz on 12/8/18.
//  Copyright © 2018 A290 Project. All rights reserved.
//

import UIKit
import CoreData

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var done: UIButton!
    @IBOutlet weak var scheduler: UIDatePicker!
    
    var first = ""
    var last = ""
    var date = ""
    
    @IBAction func saveFirst(_ sender: UITextField) {
        first = firstName.text!
    }
    
    @IBAction func saveLast(_ sender: UITextField) {
        last = lastName.text!
    }
    
    @IBAction func saveDateTime(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX") as Locale?
        dateFormatter.dateFormat = "EEEE, MMM d, yyyy, h:mm a"
        date = dateFormatter.string(from: scheduler.date)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ThirdViewController
        {
            vc.thankYou = "Thank you \(first) \(last). We look forward to seeing you at your appointment scheduled for \(date)"
        }
    }
 

}
