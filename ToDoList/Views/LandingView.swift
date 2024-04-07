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
    
    //The search Text
    @State var searchText = ""
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
            VStack{
                
                List {
                    
                }
                .searchable(text: $searchText)
                
                HStack{
                    
                }
                .padding(20)
                
                
            }
            .navigationTitle("To do")
            
        }
    }
    
    
    
    
    
}

#Preview {
    LandingView()
}
