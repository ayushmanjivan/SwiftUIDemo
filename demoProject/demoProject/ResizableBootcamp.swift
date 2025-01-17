//
//  ResizableBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 13/01/25.
//

import SwiftUI

struct ResizableBootcamp: View {
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("click me!") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(detents: $detents)
                //.presentationDetents([.medium, .large])
                //.presentationDetents([.fraction(0.1), .height(300), .medium, .large])
                .presentationDetents([.fraction(0.2), .medium, .large], selection: $detents)
               // .presentationDetents([.height(600)])
                .presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled()
        }
//        .onAppear {
//            showSheet = true
//        }
    }
}

struct MyNextView: View {
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            VStack(spacing: 20) {
                Text("Hello everyone!!")
                
                Button("20%") {
                    detents = .fraction(0.2)
                }
                
                Button("medium") {
                    detents = .medium
                }
                
                Button("large") {
                    detents = .large
                }
            }
        }
        .presentationDetents([.fraction(0.2), .medium, .large], selection: $detents)
        .presentationDragIndicator(.hidden)
    }
}

#Preview {
    ResizableBootcamp()
}
