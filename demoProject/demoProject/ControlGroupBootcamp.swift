//
//  ControlGroupBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 14/01/25.
//

import SwiftUI

struct ControlGroupBootcamp: View {
    var body: some View {
        Menu("My Menu") {
            ControlGroup("One") {
                Button("Uno") {
                    
                }
                Button("Dos") {
                    
                }
//                Button("Tres") {
//                    
//                }
                Menu("How are you") {
                    Button("Good") {
                        
                    }
                    Button("bad") {
                        
                    }
                }
            }
            Button("Two") {
                
            }
            Menu("Three") {
                Button("Hi") {
                    
                }
                Button("Hello") {
                    
                }
                Menu("How are you") {
                    Button("Good") {
                        
                    }
                    Button("bad") {
                        
                    }
                }
            }
        }
    }
}

#Preview {
    ControlGroupBootcamp()
}
