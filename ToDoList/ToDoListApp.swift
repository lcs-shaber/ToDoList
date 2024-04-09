//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Sophie Haber on 07.04.24.
//

import SwiftData
import SwiftUI

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            LandingView()
                .modelContainer(for: TodoItem.self)
        }
    }
}
