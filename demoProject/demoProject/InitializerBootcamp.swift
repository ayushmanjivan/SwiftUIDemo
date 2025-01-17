//
//  InitializerBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 31/12/24.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
   
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    VStack {
        HStack {
            InitializerBootcamp(count: 5, fruit: .apple)
            InitializerBootcamp(count: 15, fruit: .orange)
        }
        HStack {
            InitializerBootcamp(count: 25, fruit: .apple)
            InitializerBootcamp(count: 45, fruit: .orange)
        }
    }
}
