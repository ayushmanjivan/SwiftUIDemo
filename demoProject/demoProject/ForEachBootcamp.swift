//
//  ForEachBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 31/12/24.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hii", "Hello", "everyone"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
//            ForEach(0..<10) { index in
//                HStack {
//                    Circle()
//                        .frame(width: 50, height: 50)
//                    Text("Index is: \(index)")
//                        .font(.title)
//                }
//            }
            //Text(myString)
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
