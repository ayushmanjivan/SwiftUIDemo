//
//  PopoverModifierBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 13/01/25.
//

import SwiftUI

struct PopoverModifierBootcamp: View {
    @State private var showPopover: Bool = false
    @State private var feedbackOptions: [String] = [
        "very good 😁",
        "average 😌",
        "very bad 🥲"
    ]
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            VStack {
                
                Spacer()
                
                Button("Click Me") {
                    showPopover.toggle()
                }
                .padding(20)
                .background(Color.yellow)
                .popover(isPresented: $showPopover, attachmentAnchor: .point(.top), content: {
                    ScrollView {
                        VStack(alignment: .leading, spacing: 12, content: {
                            ForEach(feedbackOptions, id: \.self) { option in
                                Button(option) {
                                    
                                }
                                if option != feedbackOptions.last {
                                    Divider()
                                }
                            }
                        })
                        .padding(20)
                    }
                    .presentationCompactAdaptation(.popover)
                })
    //            .popover(isPresented: $showPopover) {
    //                Text("hello subscribers")
    //                    .presentationCompactAdaptation(.popover)
    //            }
            }
        }
    }
}

#Preview {
    PopoverModifierBootcamp()
}
