//
//  ReminderAppApp.swift
//  ReminderApp
//
//  Created by Shivam Bakshi on 9/16/22.
//

import SwiftUI


@main
struct ReminderAppApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
