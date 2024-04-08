//
//  LandingView.swift
//  ToDoList
//
//  Created by Sophie Haber on 07.04.24.
//

import SwiftUI

struct LandingView: View {
    
    // MARK: Stored properties
    
    // The item currently being added:
    @State var newItemDescription: String = ""
    
    //The list of items the user has added so far
    @State var itemsAdded: [String] = []
    
    //The search Text
    @State var searchText = ""
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
            VStack{
                
                List {
                    
                    ItemView(
                        title: "hhh",
                        done: false
                    )
                    
                    ItemView(
                        title: "jjjj",
                        done: true
                    )
                    
                    
                    ItemView(
                        title: "kkk",
                        done: false
                    )
                    
                }
                .searchable(text: $searchText)
                
                HStack{
                    TextField("Enter a Todo Item", text:$newItemDescription)
                    
                    Button {
                        add()
                    }
                label: {
                    Text("ADD")
                }
                    
                }
                .padding(20)
                
                
            }
            .navigationTitle("To do")
            
        }
    }
    
    // MARK: Functions
    func add() {
        //save the users idea
        itemsAdded.append(newItemDescription)
        
    }
    
    
    
    
    
}

#Preview {
    LandingView()
}


