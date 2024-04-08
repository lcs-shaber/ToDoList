//
//  ItemView.swift
//  ToDoList
//
//  Created by Sophie Haber on 08.04.24.
//

import SwiftUI

struct ItemView: View {
    
    let currentItem: TodoItem
    
    
    var body: some View {
        Label(
            title: { Text(currentItem.title) },
            icon: {
                
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
 //               if done == true {
 //                   Image(systemName: "checkmark.circle")
 //               }
 //               else {
 //                   Image(systemName: "circle")
 //               }
                
                
            }
        )
    }
}

#Preview {
    List {
        ItemView(currentItem: firstItem)
    }
}
