//
//  ExtractSubviews.swift
//  demoProject
//
//  Created by ayushman.soni on 01/01/25.
//

import SwiftUI

struct ExtractSubviews: View {
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 2, color: .red)
            MyItem(title: "Oranges", count: 12, color: .orange)
            MyItem(title: "Bananas", count: 34, color: .yellow)
        }
    }
}

#Preview {
    ExtractSubviews()
}

struct MyItem: View {
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
