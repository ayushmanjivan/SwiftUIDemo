//
//  SliderBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 07/01/25.
//

import SwiftUI

struct SliderBootcamp: View {
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating:::")
            Text(
                String(format: "%.0f", sliderValue)
               // "\(sliderValue)"
            )
            .foregroundColor(color)
            //Slider(value: $sliderValue)
            //Slider(value: $sliderValue, in: 1...5)
            //Slider(value: $sliderValue, in: 1...6, step: 0.5)
            Slider(
                value: $sliderValue,
                in: 1...8,
                step: 1.0,
                onEditingChanged: { _ in
                    color = .green
                },
                minimumValueLabel:
                    Text("1")
                    .font(.headline)
                    .foregroundColor(.orange)
                ,
                maximumValueLabel:
                    Text("8")
                    .font(.headline)
                    .foregroundColor(.orange)
                ,
                label: {
                    Text("title")
                })
                .accentColor(.red)
        }
        .font(.headline)
        .padding()
    }
}

#Preview {
    SliderBootcamp()
}
