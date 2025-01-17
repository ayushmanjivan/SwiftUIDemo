//
//  SafeAreaBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 31/12/24.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        //        ZStack {
        //            // background
        //            Color.blue
        //                .edgesIgnoringSafeArea(.all)
        //
        //            // foreground
        //            VStack {
        //                Text("Hello, World!")
        //                Spacer()
        //            }
        //            .frame(maxWidth: .infinity, maxHeight: .infinity)
        //            .background(Color.red)
        //        }
        ScrollView{
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background(Color.red)
    }
}

#Preview {
    SafeAreaBootcamp()
}
