//
//  ImagesBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 29/12/24.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
        Image("Google")
            .resizable()
            .renderingMode(.template)
            //.aspectRatio(contentMode: .fit)
            //.scaledToFit()
            .scaledToFill()
            .frame(width: 300, height: 200)
            //.clipped()
            //.cornerRadius(20.0)
            //.clipShape(Circle())
            .foregroundColor(.green)
    }
}

#Preview {
    ImagesBootcamp()
}
