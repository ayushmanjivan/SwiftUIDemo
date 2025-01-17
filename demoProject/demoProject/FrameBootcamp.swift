//
//  FrameBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 30/12/24.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.red)
            .frame(width: 220, height: 20, alignment: .center)
//            .background(.green)
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(.green)
            .padding(.top)
        Text("Hello Ayushman")
            .background(.green)
            .frame(height: 100, alignment: .top)
            .background(.orange)
            .frame(width: 150)
            .background(.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.pink)
            .frame(height: 400)
            .background(.red)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(.yellow)
    }
}

#Preview {
    FrameBootcamp()
}
