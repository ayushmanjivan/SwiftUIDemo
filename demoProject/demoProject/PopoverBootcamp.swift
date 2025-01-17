//
//  PopoverBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 02/01/25.
//

import SwiftUI

struct PopoverBootcamp: View {
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            
            // method 1 - sheet
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
            
            // method 2 - Transition
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring, value: showNewScreen)
//                }
//            }
//            .zIndex(2.0)
            
            // method 3 - Animation offset
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring(), value: showNewScreen)
        }
    }
}

struct NewScreen: View {
    @Environment(\.dismiss) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button {
                showNewScreen.toggle()
                //presentationMode.callAsFunction()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
                
            }

        }
    }
}

#Preview {
    PopoverBootcamp()
}
