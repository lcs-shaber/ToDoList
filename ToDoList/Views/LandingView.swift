//
//  LandingView.swift
//  ToDoList
//
//  Created by Sophie Haber on 07.04.24.
//

import SwiftData
import SwiftUI

struct LandingView: View {
    
    // MARK: Stored properties
    
    // The item currently being added:
    @State var newItemDescription: String = ""
    
    //The list of todo items
    @Query var todos: [TodoItem]
    
    //The search Text
    @State var searchText = ""
    
    // Access the model context (required to do additions, deletions, updates, et cetera)
    @Environment(\.modelContext) var modelContext
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
            VStack{
                
                List {
                    ForEach(todos) { todo in
                        
                        ItemView(currentItem: todo)
                        
                    }
                    .onDelete(perform: removeRows)
                                
                }
                .searchable(text: $searchText)
                
                
                HStack{
                    TextField("Enter a Todo Item", text:$newItemDescription)
                    
                    Button("ADD") {
                        //add the new todo item
                        createTodo(withTitle: newItemDescription)
                            
                    }
                    .font(.caption)
                    .disabled(newItemDescription.isEmpty == true)
                    
                }
                .padding(20)
                
                
            }
            .navigationTitle("To do")
            
        }
    }
    
    // MARK: Functions
    func createTodo(withTitle title: String) {
        
        //create the new todo item instance
        let todo = TodoItem(
            title: title,
            done: false
        )
        
        //use the model context to insert the new to-do
        modelContext.insert(todo)
        
    }
    
    func removeRows(at offsets: IndexSet) {
        
        // Accept the offset within the list
        // (the position of the item being deleted)
        //
        // Then ask the model context to delete this
        // for us, from the 'todos' array
        
        for offset in offsets {
            modelContext.delete(todos[offset])
        }
    }
    
    
    
    
}

// #Preview {
// LandingView()
// }


