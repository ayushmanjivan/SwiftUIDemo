//
//  StacksBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 30/12/24.
//

import SwiftUI

struct StacksBootcamp: View {
    // vstack:- vertical
    // Hstack:- horizontal
    // zstack:- zindex(back to front)
    
    var body: some View {
//        ZStack {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 150, height: 150)
//            Rectangle()
//                .fill(.green)
//                .frame(width: 130, height: 130)
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 100, height: 100)
//        }
//        ZStack(alignment: .trailing, content: {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 200, height: 200)
//            Rectangle()
//                .fill(.green)
//                .frame(width: 150, height: 150)
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 100, height: 100)
//        })
//        ZStack(alignment: .top) {
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 350, height: 500, alignment: .center)
//            VStack(alignment: .leading) {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150)
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 100, height: 100)
//                HStack(alignment: .bottom) {
//                    Rectangle()
//                        .fill(.purple)
//                        .frame(width: 50, height: 50)
//                    Rectangle()
//                        .fill(.pink)
//                        .frame(width: 75, height: 75)
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(width: 25, height: 25)
//                }
//                .background(Color.white)
//            }
//            .background(Color.black)
//        }
        
//        VStack(alignment: .center, spacing: 20) {
//            Text("items in your cart:::")
//                .font(.caption)
//                .foregroundColor(.gray)
//            Text("5")
//                .font(.largeTitle)
//                .underline()
//       }
        VStack(spacing: 50) {
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                Text("1")
                    .font(.title)
                    .foregroundColor(Color.white)
            }
            Text("1")
                .font(.title)
                .foregroundColor(Color.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
    }
}

#Preview {
    StacksBootcamp()
}
