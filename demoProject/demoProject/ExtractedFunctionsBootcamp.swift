//
//  ExtractedFunctionsBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 01/01/25.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    @State var backgroundColor: Color = Color.yellow
    @State var myTitle: String = "Hello Welcome!!!"
    @State var iCount: Int = 0
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            // content
            contentLayer
        }
    }
    
    //MARK: - content view layer
    var contentLayer: some View {
        VStack {
            Text(myTitle)
                .font(.largeTitle)
            Button {
                buttonPressMeTapped()
            } label: {
                Text("Press me".uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(12)
            }
        }
    }
    
    // MARK: - Method for Button pressed
    func buttonPressMeTapped() {
        backgroundColor = .red
        myTitle = "Happy New Year!!!"
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
