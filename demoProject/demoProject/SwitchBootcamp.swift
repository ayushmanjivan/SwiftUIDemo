//
//  SwitchBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 07/01/25.
//

import SwiftUI

struct SwitchBootcamp: View {
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status: ")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(
                isOn: $toggleIsOn,
                label: {
                    Text("Toggle:")
                        .font(.title)
                        .fontWeight(.semibold)
                })
            .toggleStyle(SwitchToggleStyle(tint: .red))
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    SwitchBootcamp()
}
