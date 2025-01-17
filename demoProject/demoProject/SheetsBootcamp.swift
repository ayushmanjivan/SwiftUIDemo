//
//  SheetsBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 02/01/25.
//

import SwiftUI

struct SheetsBootcamp: View {
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
            
            // full screen
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
            
            // sheet cover screen
            .sheet(isPresented: $showSheet) {
                SecondScreen()
            }
        }
    }
}

struct SecondScreen: View {
    @Environment(\.dismiss) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button {
                presentationMode.callAsFunction()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

#Preview {
    SheetsBootcamp()
}
