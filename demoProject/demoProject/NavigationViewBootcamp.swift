//
//  NavigationViewBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 02/01/25.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hello World",
                               destination: MyOtherScreen())
                Text("Hello World!")
                Text("Hello Ayushman")
                Text("Hello Soni")
            }
            .font(.title)
            .fontWeight(.medium)
            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.large)
//            .navigationBarHidden(true)
            
            .toolbar {
                // Leading tab bar item
                ToolbarItem(placement: .topBarLeading) {
                    NavigationLink(
                        destination: MyOtherScreen()) {
                        Image(systemName: "arrow.left.circle.fill")
                    }
                }
                // Trailing Tab bar item
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(
                        destination: MyOtherScreen()) {
                            Image(systemName: "gear")
                    }
                }
            }
            .foregroundColor(.blue)
            
            // old version
//            .navigationBarItems(
//                leading: NavigationLink(
//                    destination: MyOtherScreen(),
//                    label: {
//                        Image(systemName: "person.fill")
//                    }),
//                trailing: NavigationLink(
//                    destination: MyOtherScreen(),
//                    label: {
//                        Image(systemName: "gear")
//                })
//            )
//            .accentColor(.red)
        }
    }
}

struct MyOtherScreen: View {
    @Environment(\.dismiss) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen")
                .navigationBarHidden(true)
            
            VStack {
                Button("Back Button") {
                    presentationMode.callAsFunction()
                }
                NavigationLink("click here", destination: Text("3rd screen"))
            }
            .font(.title)
            .fontWeight(.medium)
        }
    }
}


#Preview {
    NavigationViewBootcamp()
}
