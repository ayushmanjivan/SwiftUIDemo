//
//  ContextMenuBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 06/01/25.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    @State var backgroundColor: Color = .purple
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu {
            Button(action: {
                backgroundColor = .red
            }, label:  {
                Label("Share post", systemImage: "flame.fill")
            })
            
            Button(action: {
                backgroundColor = .yellow
            }, label:  {
                Text("Report Post")
            })
            
            Button(action: {
                backgroundColor = .blue
            }, label:  {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            })
        }
    }
}

#Preview {
    ContextMenuBootcamp()
}
