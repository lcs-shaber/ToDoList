//
//  TodoItem.swift
//  ToDoList
//
//  Created by Sophie Haber on 08.04.24.
//

import Foundation

struct TodoItem: Identifiable {
    let id = UUID()
    var title: String
    var done: Bool
}


let firstItem = TodoItem(title: "jhjsj", done: false)

let secondItem = TodoItem(title: "dkhdhf", done: true)

let thirdItem = TodoItem(title: "khkdh", done: false)


let exampleItems = [

    firstItem,
    
    secondItem,
    
    thirdItem,
    
]
