//
//  ContentUnavailableViewBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 14/01/25.
//

import SwiftUI

struct ContentUnavailableViewBootcamp: View {
    var body: some View {
        if #available(iOS 17, *) {
//            ContentUnavailableView.search(text: "abc")
            ContentUnavailableView(
                "No internet connection",
                systemImage: "wifi.slash",
                description: Text("Please connect to the internet and try again.")
            )
        } else {
            
        }
    }
}

#Preview {
    ContentUnavailableViewBootcamp()
}
