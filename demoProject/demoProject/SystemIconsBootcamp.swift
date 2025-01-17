//
//  SystemIconsBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 27/12/24.
//

import SwiftUI

struct SystemIconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
            //.font(.caption)
            //.resizable()
            //.aspectRatio(contentMode: .fit)
            //.scaledToFill()
            //.font(.system(size: 200))
            //.foregroundStyle(.red)
            //.frame(width: 300, height: 300)
            //.clipped()
    }
}

#Preview {
    SystemIconsBootcamp()
}
