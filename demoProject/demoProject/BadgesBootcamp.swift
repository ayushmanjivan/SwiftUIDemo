//
//  BadgesBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 09/01/25.
//

import SwiftUI
// LIST
// TABVIEW

struct BadgesBootcamp: View {
    var body: some View {
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(5)
//            
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge("New")
//            
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//        }
        
        List {
            Text("Hello")
                .badge("New items")
            Text("Hello")
                .badge(5)
            Text("Hello")
            Text("Hello")
        }
    }
}

#Preview {
    BadgesBootcamp()
}
