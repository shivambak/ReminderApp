//
//  NewReminder.swift
//  ReminderApp
//
//  Created by Shivam Bakshi on 9/20/22.
//

import SwiftUI

struct NewReminder: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State var reminderName: String = ""
    @State var time: String = ""
    @State var description: String = ""
    @State private var reminderdate = Date()
    
    var body: some View {
        NavigationView {
            
                   
            ZStack {
                
                VStack {
                    
                    Image(systemName: "alarm")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                        
                    
                    HStack{
                        TextField("Enter name of Reminder", text: $reminderName)
                            .textFieldStyle(.roundedBorder)
                            .font(.headline)
                            .padding()
                            .frame(maxWidth:400)
                            .cornerRadius(50)
                    }
                    HStack{
                        DatePicker(selection: $reminderdate, displayedComponents: .date) {
                            Text("Select a date")
                            
                            
                        }
                        .textFieldStyle(.roundedBorder)
                        .font(.headline)
                        .foregroundColor(Color.gray.opacity(0.6))
                        .padding()
                        
                    }
                    HStack{
                        TextField("Enter the Time", text: $time)
                            .textFieldStyle(.roundedBorder)
                            .font(.headline)
                            .padding()
                            .frame(maxWidth:400)
                            .cornerRadius(50)
                    }
                    HStack{
                        TextField("Enter the Description", text: $description)
                            .padding(25)
                            .border(Color.gray.opacity(0.1))
                            .font(.headline)
                            .padding()
                            .frame(maxWidth:400)
                            .cornerRadius(50)
                        
                    }
                    Button(action : addReminder){
                        Label("Add",systemImage: "plus")
                    }
                }
            }
            .navigationTitle("New Reminders")
         
        }
        
    }
    
    private func addReminder() {
            withAnimation {
                let newItem = Reminders(context: viewContext)
                newItem.reminderTime = time
                newItem.reminderTitle =  reminderName
                newItem.reminderDescription = description
                newItem.reminderDate = reminderdate

                do {
                    try viewContext.save()
                } catch {
                    // Replace this implementation with code to handle the error appropriately.
                    // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                    let nsError = error as NSError
                    fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
                }
            }
        }
}
