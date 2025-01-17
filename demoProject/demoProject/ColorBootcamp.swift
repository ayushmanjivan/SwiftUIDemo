//
//  ColorBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 27/12/24.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20.0)
            .fill(
                //Color.primary
                //Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
            //.shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.4), radius: 10, x: -20, y: -20)
    }
}

#Preview {
    ColorBootcamp()
}
