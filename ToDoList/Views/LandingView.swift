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
    @State var todos: [TodoItem] = exampleItems
    
    //The search Text
    @State var searchText = ""
    
    // Access the model context (required to do additions, deletions, updates, et cetera)
    @Environment(\.modelContext) var modelContext
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
            VStack{
                
                List ($todos){ $todo in
                    
                    ItemView(currentItem: $todo)
                    //delete a todo item
                        .swipeActions{
                            Button(
                            "Delete",
                            role: .destructive,
                            action: {
                                delete(todo)
                            }
                            )
                        }
                    
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
        
        //append to the array
        todos.append(todo)
        
    }
    
    func delete(_ todo: TodoItem) {
        //Remove the provided todo item from the array
        todos.removeAll() {  currentItem in
            currentItem.id == todo.id
            
        }
    }
    
    
    
    
}

// #Preview {
// LandingView()
// }


