//
//  Appointments+CoreDataProperties.swift
//  NSA
//
//  Created by Jenni Munoz on 12/9/18.
//  Copyright © 2018 A290 Project. All rights reserved.
//
//

import Foundation
import CoreData


extension Appointments {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Appointments> {
        return NSFetchRequest<Appointments>(entityName: "Appointments")
    }

    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    @NSManaged public var date: NSDate?

}
