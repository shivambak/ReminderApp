//
//  Reminder+CoreDataProperties.swift
//  ReminderApp
//
//  Created by Shivam Bakshi on 9/20/22.
//
//

import Foundation
import CoreData


extension Reminders {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Reminders> {
        return NSFetchRequest<Reminders>(entityName: "Reminders")
    }

    @NSManaged public var reminderTime: String?
    @NSManaged public var reminderDescription: String?
    @NSManaged public var reminderTitle: String?
    @NSManaged public var reminderDate: Date?

}

extension Reminders : Identifiable {

}
