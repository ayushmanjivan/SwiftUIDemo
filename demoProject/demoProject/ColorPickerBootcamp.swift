//
//  ColorPickerBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 07/01/25.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            ColorPicker("Select a color::",
                        selection: $backgroundColor,
                        supportsOpacity: true)
            .padding()
            .background(.black)
            .foregroundColor(.white)
            .cornerRadius(10)
            .font(.headline)
            .padding(50)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
