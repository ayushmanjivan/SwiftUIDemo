//
//  ButtonBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 31/12/24.
//

import SwiftUI

struct ButtonBootcamp: View {
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            
            // button 1
            
            Button("Press me!") {
                self.title = "Hello World"
            }
            .accentColor(.red)
            
            // button 2
            
            Button {
                self.title = "Button #2 was pressed"
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }

            // button 3
            
            Button {
                self.title = "Button #3 is press"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    }
            }
            
            // button 4
            Button {
                self.title = "Button #4 is tapped"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 20)
                    .background {
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    }
            }

        }
    }
}

#Preview {
    ButtonBootcamp()
}
