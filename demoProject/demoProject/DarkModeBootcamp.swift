//
//  DarkModeBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 07/01/25.
//

import SwiftUI

struct DarkModeBootcamp: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("This text is primary")
                        .foregroundColor(.primary)
                    Text("This text is secondary")
                        .foregroundColor(.secondary)
                    Text("This color is black")
                        .foregroundColor(.black)
                    Text("This color is White")
                        .foregroundColor(.white)
                    Text("This color is red")
                        .foregroundColor(.red)
                    Text("This color is globally adaptive")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This is locally adaptive!")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

#Preview {
    Group {
        DarkModeBootcamp()
            .preferredColorScheme(.light)
    }
}
