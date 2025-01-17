//
//  PaddingAndSpacerBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 31/12/24.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
    //            .background(Color.yellow)
    //            .padding()
    //            .padding(.all)
    //            .background(Color.red)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
    //            .frame(maxWidth: .infinity, alignment: .leading)
    //            .padding(.leading, 20)
            
            Text("I am a iOS Developer having an experience of 4 years into iOS Development and worked on more than 25 live projects based on swift and objective c")
        }
//        .background(Color.blue)
//        .padding()
//        .background(Color.red)
//        .padding(.horizontal, 10)
//        .background(Color.green)
        .padding()
        .padding(.vertical, 10.0)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3),
                        radius: 10,
                        x: 0.0, y: 10)
        )
    }
}

#Preview {
    PaddingAndSpacerBootcamp()
}
