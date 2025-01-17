//
//  ToolbarBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 13/01/25.
//

import SwiftUI

struct ToolbarBootcamp: View {
    @State private var path: [String] = []
    
    var body: some View {
        NavigationStack(path: $path) {
            ZStack {
                Color.white.ignoresSafeArea()
                ScrollView {
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .fill(.blue)
                            .frame(width: 200, height: 200)
                    }
                }
                
            }
            .navigationTitle("Toolbar")
//            .navigationBarItems(
//                leading: Image(systemName: "heart.fill"),
//                trailing: Image(systemName: "gear")
//            )
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "gear")
                }
            }
            //.toolbarVisibility(.hidden, for: .navigationBar)
           // .toolbarBackground(.hidden, for: .navigationBar)
           // .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarTitleMenu {
                Button("screen 1") {
                    path.append("Screen 1")
                }
                Button("screen 2") {
                    path.append("Screen 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New screen: \(value)")
            }
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
