//
//  NavigationStackBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 13/01/25.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    let fruits = ["Apple", "Orange", "banana"]
    @State private var stackPath: [String] = []
    
    var body: some View {
        NavigationStack(path: $stackPath) {
            ScrollView {
                VStack(spacing: 40) {
                    Button("Super segue!") {
                        stackPath.append(contentsOf: [
                            "Coconut", "Watermelon", "Mango"
                        ])
                    }
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    ForEach(0..<10) { x in
                        NavigationLink(value: x) {
                            Text("click me: \(x)")
                        }
                    }
                }
            }
            .navigationTitle("Nav bootcamp!")
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
            .navigationDestination(for: String.self) { value in
                Text("another screen: \(value)")
            }
        }
    }
}

struct MySecondScreen: View {
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("Init screen:: \(value)")
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}

#Preview {
    NavigationStackBootcamp()
}
