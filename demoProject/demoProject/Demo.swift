//
//  Demo.swift
//  demoProject
//
//  Created by ayushman.soni on 03/01/25.
//

import SwiftUI

struct Demo: View {
    @ObservedObject var person = Person()
    
    var body: some View {
        VStack {
            Text("count::\(person.count)")
            Button("Increment") {
                person.increment()
            }
        }
    }
}

class Person: ObservableObject {
    @Published var count: Int = 0
    
    func increment() {
        count += 1
    }
}


#Preview {
    Demo()
}
