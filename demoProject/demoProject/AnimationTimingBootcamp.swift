//
//  AnimationTimingBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 01/01/25.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Press me!!") {
                isAnimating.toggle()
            }
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: 100)
//                .animation(.linear(duration: timing))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: 100)
//                .animation(.easeIn(duration: timing))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: 100)
//                .animation(.easeInOut(duration: timing))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: 100)
//                .animation(.easeOut(duration: timing))
            
            RoundedRectangle(cornerRadius: 20.0)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100)
               // .animation(.spring())
                .animation(.spring(
                    response: 0.5,
                    dampingFraction: 0.4,
                    blendDuration: 1.0))
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
