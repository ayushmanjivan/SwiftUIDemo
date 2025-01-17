//
//  ViewModelBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 08/01/25.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 30)
        let fruit2 = FruitModel(name: "Banana", count: 12)
        let fruit3 = FruitModel(name: "Watermelon", count: 2)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) { [self] in
            fruitArray.append(fruit1)
            fruitArray.append(fruit2)
            fruitArray.append(fruit3)
            isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {
   // @State var fruitArray: [FruitModel] = []
    // MARK: - When to use stateObject and observedObject
    
    // stateObject:- Use this on creation / init
    // observedObject:- use this for subview
    
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                            Spacer()
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruits List")
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(
                        destination: RandomScreen(fruitViewModel: fruitViewModel),
                        label: {
                            Image(systemName: "arrow.right")
                                .font(.title)
                        })
                }
            })
        }
    }
}

//  Second screen display data

struct RandomScreen: View {
    @Environment(\.dismiss) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .font(.headline)
                        .foregroundColor(.white)
                }
            }
        }
    }
}

#Preview {
    ViewModelBootcamp()
}
