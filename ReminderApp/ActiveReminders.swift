//
//  ActiveReminders.swift
//  ReminderApp
//
//  Created by Shivam Bakshi on 9/16/22.
//

import SwiftUI




struct ActiveReminders: View {
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(
            sortDescriptors: [NSSortDescriptor(keyPath: \Reminders.reminderTime, ascending: true)],
            animation: .default)
    private var items: FetchedResults<Reminders>
    var body: some View {
        
        NavigationView {
            ZStack {
                List{
                    ForEach(items){
                        item in
                        NavigationLink{
                            VStack{
                                
                                Text("\(item.reminderDescription!)")
                                    .font(.headline)
                            }
                            .navigationTitle("\(item.reminderTitle!)")
                            
                        }
                        
                    label: {
                        Text("\(item.reminderTitle!)")
                        Text(item.reminderDate!,formatter: itemFormatter)
                        Text("\(item.reminderTime!)")
                    }
                    }
                    //delete item method
                }
                .navigationTitle("Active Reminders")
                
            }
            
            
            
        }
           
    }
    private let itemFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }()
    
    private func delete 
    
}
    
    
    

