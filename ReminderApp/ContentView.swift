//
//  ContentView.swift
//  ReminderApp
//
//  Created by Shivam Bakshi on 9/16/22.
//
import CoreData
import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
   // allowing to save items into the envoirnment
    
    @State var reminderName: String = ""
    @State var time: String = ""
    @State var description: String = ""
    @State private var reminderdate = Date()
    
    var body: some View {
        TabView {
            NewReminder()
                .tabItem {
                    Image(systemName: "alarm")
                    Text("New Reminder")
                    
                }
            ActiveReminders()
                .tabItem {
                    Image(systemName: "list.clipboard")
                    Text("Active Reminders")
                }
        }
        
        
        
    }
    
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}
