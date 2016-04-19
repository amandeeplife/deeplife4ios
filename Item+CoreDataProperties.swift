//
//  Item+CoreDataProperties.swift
//  Deep_Life
//
//  Created by Amanuel Mulat on 4/19/16.
//  Copyright © 2016 BiftuGirma. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Item {

    @NSManaged var image: NSData?
    @NSManaged var name: String?
    @NSManaged var note: String?
    @NSManaged var qty: String?

}
