//
//  SpacerBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 31/12/24.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
//        HStack(spacing: nil) {
//            Spacer(minLength: 0)
//                .frame(height: 10)
//                .background(.orange)
//            
//            Rectangle()
//                .frame(width: 50, height: 50)
//            
//            Spacer()
//                .frame(height: 10)
//               .background(.orange)
//            
//            Rectangle()
//                .fill(.red)
//                .frame(width: 50, height: 50)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(.orange)
//            
//            Rectangle()
//                .fill(.green)
//                .frame(width: 50, height: 50)
//            
//            Spacer(minLength: 0)
//                .frame(height: 10)
//                .background(.orange)
//        }
//        .background(Color.yellow)
//        .padding(.horizontal, 200)
//        .background(Color.blue)
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
//                    .frame(height: 10)
//                    .background(Color.orange)
                Image(systemName: "gear")
            }
            
            .font(.title)
            //.background(Color.yellow)
            .padding(.horizontal)
           // .background(Color.blue)
            Spacer()
//                .frame(width: 10)
//                .background(Color.orange)
            
            Rectangle()
                .frame(height: 55)
        }
        .padding()
    }
}

#Preview {
    SpacerBootcamp()
}
