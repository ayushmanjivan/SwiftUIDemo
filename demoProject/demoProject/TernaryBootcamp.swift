//
//  TernaryBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 01/01/25.
//

import SwiftUI

struct TernaryBootcamp: View {
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            
            Button(!isStartingState ? "Press me!!" : "Pressed!!!") {
                isStartingState.toggle()
            }
            .font(.title)
            .fontWeight(.semibold)
            
            Text(isStartingState ? "Starting State" : "Ending State")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(isStartingState ? .red : .blue)
            
            RoundedRectangle(cornerRadius: isStartingState ? 20.0 : 10.0)
                .fill(isStartingState ? .red : .blue)
                .frame(
                    width: isStartingState ? 200 : 100,
                    height: isStartingState ? 200 : 100)
            Spacer()
        }
    }
}

#Preview {
    TernaryBootcamp()
}
