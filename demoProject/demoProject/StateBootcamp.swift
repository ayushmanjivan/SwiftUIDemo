//
//  StateBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 01/01/25.
//

import SwiftUI

struct StateBootcamp: View {
    @State var backgroundColor: Color = .green
    @State var title: String = "Happy New Year 2025!!!"
    @State var iCount: Int = 0
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            VStack(spacing: 20) {
                Text(title)
                    .font(.title)
        
                Text("count: \(iCount)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        iCount += 1
                        title = "Hello Ayushman!!!"
                        backgroundColor = .red
                    }
                    
                    Button("Button 2") {
                        iCount -= 1
                        title = "Welcome to Infosys!!!"
                        backgroundColor = .purple
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
