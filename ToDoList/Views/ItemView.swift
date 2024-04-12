//
//  ItemView.swift
//  ToDoList
//
//  Created by Sophie Haber on 08.04.24.
//

import SwiftData
import SwiftUI

struct ItemView: View {
    
    @Bindable var currentItem: TodoItem
    
    
    var body: some View {
        Label(
            title: {
                TextField("Enter a to-do item", text:$currentItem.title, axis: .vertical)
            }, icon: {
                
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
 //               if done == true {
 //                   Image(systemName: "checkmark.circle")
 //               }
 //               else {
 //                   Image(systemName: "circle")
 //               }
                //tap to mark as done
                    .onTapGesture {
                        currentItem.done.toggle()
                    }
                
                
            }
        )
    }
}

 #Preview {
     
     let container = TodoItem.preview
     
     return List {
         ItemView(currentItem: TodoItem.someItem)
         ItemView(currentItem: TodoItem.anotherItem)
     }
     .modelContainer(container)
     
 }
