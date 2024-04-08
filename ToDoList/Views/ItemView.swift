//
//  ItemView.swift
//  ToDoList
//
//  Created by Sophie Haber on 08.04.24.
//

import SwiftUI

struct ItemView: View {
    
    let title: String
    let done: Bool
    
    var body: some View {
        Label(
            title: { Text(title) },
            icon: {
                
                Image(systemName: done == true ? "checkmark.circle" : "circle")
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
        ItemView(title: "true", done: true)
    }
}
