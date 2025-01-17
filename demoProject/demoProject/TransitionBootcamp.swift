//
//  TransitionBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 01/01/25.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Press!!") {
                    showView.toggle()
                }
                .font(.title)
                .fontWeight(.semibold)
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .opacity(showView ? 1.0 : 0.0)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: .opacity.animation(.easeInOut)))
            }
            
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
