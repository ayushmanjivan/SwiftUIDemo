//
//  ViewThatFitBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 13/01/25.
//

import SwiftUI

struct ViewThatFitBootcamp: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            ViewThatFits {
                Text("This is some text that I would like to display to the user!")
                Text("This is some text that I would like to display!")
                Text("This is some text!")
            }
        }
        .frame(height: 300)
        .padding(16)
        .font(.headline)
    }
}

#Preview {
    ViewThatFitBootcamp()
}
