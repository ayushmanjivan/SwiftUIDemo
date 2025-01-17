//
//  BindingBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 01/01/25.
//

import SwiftUI

struct BindingBootcamp: View {
    @State var backgroundColor: Color = .green
    @State var myTitle: String = "Title"
    @State var buttonTitle: String = "Press Me!!"
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            // Button View
            VStack {
                Text(myTitle)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                
                ButtonView(backgroundColor: $backgroundColor, buttonTitle: $buttonTitle, myTitle: $myTitle)
            }
        }
    }
}

#Preview {
    BindingBootcamp()
}

// MARK: - Button View
struct ButtonView: View {
    @State var buttonColor: Color = .blue
    @Binding var backgroundColor: Color
    @Binding var buttonTitle: String
    @Binding var myTitle: String
    
    var body: some View {
        Button {
            buttonColor = .pink
            myTitle = "This is my new Title!!!"
            buttonTitle = "Button Pressed"
            backgroundColor = .orange
        } label: {
            Text(buttonTitle)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}
