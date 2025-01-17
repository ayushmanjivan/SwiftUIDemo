//
//  AnimationBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 01/01/25.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button(isAnimated ? "Pressed!!" : "Press Me!!!") {
                withAnimation(Animation.default.repeatCount(5, autoreverses: false)) {
                    isAnimated.toggle()
                }
            }
            .font(.title)
            .fontWeight(.semibold)
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50.0 : 25.0)
                .fill(isAnimated ? .red : .blue)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
