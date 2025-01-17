//
//  ListBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 02/01/25.
//

import SwiftUI

struct ListBootcamp: View {
    @State var fruits: [String] = [
        "apple", "banana", "grapes", "peaches", "pineapples", "oranges"
    ]
    
    @State var vegetables: [String] = [
        "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                ) {
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.capitalized)
                                .font(.caption)
                                .foregroundColor(.white)
                                .padding(.vertical)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                        .listRowBackground(Color.blue)
                    }
                
                Section {
                    ForEach(vegetables, id: \.self) { veggie in
                        Text(veggie.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.purple)
                } header: {
                    HStack {
                        Text("Vegetables")
                        Image(systemName: "flame.fill")
                    }
                    .font(.headline)
                    .foregroundColor(.green)
                }

            }
            //.listStyle(InsetGroupedListStyle())
            
            .navigationTitle("Grocery List")
            
            // new version
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    addButton
                }
            }
            
            // old version
            //.navigationBarItems(leading: EditButton(), trailing: addButton)
        }
        .accentColor(.red)
    }
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("coconut")
    }
}

#Preview {
    ListBootcamp()
}
