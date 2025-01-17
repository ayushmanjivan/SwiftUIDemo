//
//  SwipeActionBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 09/01/25.
//

import SwiftUI

struct SwipeActionBootcamp: View {
    @State var fruits: [String] = [
        "apple", "banana", "grapes", "peaches", "pineapples", "oranges"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing,
                                  allowsFullSwipe: true) {
                        Button("Archive") {
                            
                        }
                        .tint(.green)
                        
                        Button("Save") {
                            
                        }
                        .tint(.blue)
                        
                        Button("Junk") {
                            
                        }
                        .tint(.black)
                    }
                
                    .swipeActions(edge: .leading,
                                  allowsFullSwipe: true) {
                        Button("Share") {
                            
                        }
                        .tint(.yellow)
                    }
            }
            //.onDelete(perform: delete)
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

#Preview {
    SwipeActionBootcamp()
}
