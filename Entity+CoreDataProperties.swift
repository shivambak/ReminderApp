//
//  Entity+CoreDataProperties.swift
//  ReminderApp
//
//  Created by Shivam Bakshi on 9/20/22.
//
//

import Foundation
import CoreData


extension Reminder {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entity> {
        return NSFetchRequest<Entity>(entityName: "Entity")
    }

    @NSManaged public var reminderTime: String?
    @NSManaged public var reminderDescription: String?
    @NSManaged public var reminderTitle: String?
    @NSManaged public var reminderDate: Date?

}

extension  : Identifiable {

}
