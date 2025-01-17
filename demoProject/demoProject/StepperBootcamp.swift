//
//  StepperBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 07/01/25.
//

import SwiftUI

struct StepperBootcamp: View {
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper:::: \(stepperValue)", value: $stepperValue)
                .font(.headline)
                .padding()
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Stepper 2::: \(Int(widthIncrement))") {
                //increment
                incrementWidth(amount: 10)
            } onDecrement: {
                // decrement
                incrementWidth(amount: -10)
            }
            .padding()
        }
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

#Preview {
    StepperBootcamp()
}
