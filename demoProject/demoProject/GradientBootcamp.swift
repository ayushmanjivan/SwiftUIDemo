//
//  GradientBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 27/12/24.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.red
                //LinearGradient(gradient: Gradient(colors: [Color.red, Color.purple]), startPoint: .leading, endPoint: .trailing)
               //RadialGradient(gradient: Gradient(colors: [Color.red, Color.purple]), center: .topLeading, startRadius: 5, endRadius: 200)
        AngularGradient(
            gradient: Gradient(colors: [Color.red, Color.purple]), center: .topLeading, angle: .degrees(180+45))
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientBootcamp()
}
