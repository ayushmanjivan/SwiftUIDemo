//
//  ifLetGuardBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 08/01/25.
//

import SwiftUI

struct ifLetGuardBootcamp: View {
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    @State var userCurrentID: String? = "iyer"
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("Here we are practising safe coding!")
                    
                    if let text = displayText {
                        Text(text)
                            .font(.title)
                    }
                    
                    if isLoading {
                        ProgressView()
                    }
                    
                    Spacer()
                }
            }
            .navigationTitle("Safe Coding!!")
            .onAppear {
                loadData2()
            }
        }
    }
    
    func loadData() {
        if let userID = userCurrentID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data of user id is \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error: There is no user id!"
        }
    }
    
    func loadData2() {
        guard let userID = userCurrentID else {
            displayText = "Error: There is no user id!"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data of user id is \(userID)"
            isLoading = false
        }
    }
}

#Preview {
    ifLetGuardBootcamp()
}
