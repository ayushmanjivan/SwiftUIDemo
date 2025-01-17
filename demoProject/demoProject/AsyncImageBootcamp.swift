//
//  AsyncImageBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 09/01/25.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    let url = URL(string: "https://picsum.photos/400")
    var body: some View {
        AsyncImage(url: url, content: { returnedImage in
            returnedImage
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .cornerRadius(20)
        }, placeholder: {
            ProgressView()
        })
    }
}

#Preview {
    AsyncImageBootcamp()
}
