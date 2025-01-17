//
//  ShapeBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 27/12/24.
//

import SwiftUI

struct ShapeBootcamp: View {
    var body: some View {
       // Circle()
            //.fill(Color.blue)
            //.foregroundColor(.red)
            //.stroke()
            //.stroke(Color.blue, lineWidth: 30.0)
            //.stroke(lineWidth: 30)
            //.stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
//            .trim(from: 0.2, to: 1.0)
//            .stroke(Color.purple, lineWidth: 20)
//        Ellipse()
//            .trim(from: 0.2, to: 1.0)
//            .frame(width: 200, height: 100)
        // Capsule(style: .circular)
            //.stroke(Color.red)
            //.fill(Color.red)
//            .stroke(Color.blue, lineWidth: 30)
//            .frame(width: 200, height: 100)
       // RoundedRectangle(cornerRadius: 20.0)
            //.fill(Color.blue)
            //.stroke(Color.green, lineWidth: 30)
       //     .frame(width: 200, height: 100)
        RoundedRectangle(cornerRadius: 20.2, style: .circular)
            .fill(AngularGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, angle: Angle(degrees: 90)))
            //.trim(from: 0.2, to: 1.0)
            .shadow(radius: 20.0, x: -10, y: -10)
            .frame(width: 300, height: 200)
    }
}

#Preview {
    ShapeBootcamp()
}
