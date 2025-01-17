//
//  ConditionalBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 01/01/25.
//

import SwiftUI

struct ConditionalBootcamp: View {
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
//        VStack(spacing: 20) {
//            
//            Button("Circle Button:: \(showCircle.description)") {
//                showCircle.toggle()
//            }
//            .font(.title)
//            .fontWeight(.semibold)
//            
//            Button("Rectangle Button: \(showRectangle.description)") {
//                showRectangle.toggle()
//            }
//            .font(.title)
//            .fontWeight(.semibold)
//            
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            }
//            
//            if showCircle && showRectangle {
//                RoundedRectangle(cornerRadius: 20.0)
//                    .frame(width: 200, height: 100)
//            }
//            
//            if showCircle || showRectangle {
//                RoundedRectangle(cornerRadius: 20.0)
//                    .frame(width: 200, height: 100)
//            }
//            
//            Spacer()
//        }
        
        VStack(spacing: 20) {
           
            Button("is Loading: \(isLoading.description)") {
                isLoading.toggle()
            }
            .font(.title)
            .fontWeight(.semibold)
            
            if isLoading {
                ProgressView()
            }
            
            Spacer()
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
