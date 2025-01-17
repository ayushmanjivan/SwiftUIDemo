//
//  NavigationSplitViewBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 13/01/25.
//

import SwiftUI

struct NavigationSplitViewBootcamp: View {
    @State private var visibility: NavigationSplitViewVisibility = .all
    @State private var selectedCategory: FoodCategory? = nil
    @State private var selectedFruits: Fruit? = nil
    
    var body: some View {
        NavigationSplitView(columnVisibility: $visibility) {
            List(FoodCategory.allCases, id: \.rawValue, selection: $selectedCategory) { category in
                NavigationLink(category.rawValue.capitalized, value: category)
            }
            .navigationTitle("Categories")
        } content: {
            if let selectedCategory {
                Group {
                    switch selectedCategory {
                    case .fruits:
                        List(Fruit.allCases, id: \.rawValue, selection: $selectedFruits) { fruit in
                            NavigationLink(fruit.rawValue.capitalized, value: fruit)
                        }
                    case .vegetables:
                        EmptyView()
                    case .meats:
                        EmptyView()
                    }
                }
                .navigationTitle(selectedCategory.rawValue.capitalized)
            } else {
                Text("Select a category to begin")
            }
        } detail: {
            if let selectedFruits {
                Text("you have selected:: \(selectedFruits.rawValue)")
                    .font(.largeTitle)
                    .navigationTitle(selectedFruits.rawValue.capitalized)
            } else {
                Text("Select a something")
            }
        }
        .navigationSplitViewStyle(.balanced)

//        NavigationSplitView {
//            Color.red
//        } content: {
//            Color.blue
//        } detail: {
//            Color.green
//        }

    }
}

#Preview {
    NavigationSplitViewBootcamp()
}

enum FoodCategory: String, CaseIterable {
    case fruits, vegetables, meats
}

enum Fruit: String, CaseIterable {
    case apple, banana, orange
}
