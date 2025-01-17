//
//  SafeAreaInsetBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 13/01/25.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe area insets!")
            .navigationBarTitleDisplayMode(.inline)
            //            .overlay (
            //                Text("hi")
            //                    .frame(maxWidth: .infinity)
            //                    .background(Color.yellow)
            //                , alignment: .bottom
            //            )
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                Text("hi")
                    .frame(maxWidth: .infinity)
                //.padding()
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
                // .clipShape(Circle())
                //.padding()
            }
            .safeAreaInset(edge: .bottom, alignment: .trailing, spacing: nil) {
                Text("hi")
                    .frame(maxWidth: .infinity)
                //.padding()
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
                // .clipShape(Circle())
                //.padding()
            }
        }
    }
}

#Preview {
    SafeAreaInsetBootcamp()
}
