//
//  NSAModel.swift
//  NSA
//
//  Created by Jenni Munoz on 12/10/18.
//  Copyright © 2018 A290 Project. All rights reserved.
//

import Foundation
import UIKit

class NSAModel: NSObject {

    let names = [1: "Hannah", 2: "Jessie", 3: "Sarah", 4: "Julie", 5: "Riley"]
    let services = [1: "Manicure", 2: "Pedicure", 3: "Pink & White", 4: "Acrylic Full Set", 5: "Acrylic Removal"]
    
    let i = Int(arc4random_uniform(5))
    
    func showName() -> String {
        let n: String = Array(names)[i].value
        return n
    }
    
    func showService() -> String {
        let s: String = Array(services)[i].value
        return s
    }
    
    
}
