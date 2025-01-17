//
//  TextfieldBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 06/01/25.
//

import SwiftUI

struct TextfieldBootcamp: View {
    @State var textfieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here...", text: $textfieldText)
                // .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
                
                Button(action: {
                    if textIsAppropriate() {
                        saveText()
                    }
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                .disabled(!textIsAppropriate())
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Textfield bootcamp!")
        }
    }
    
    func saveText() {
        dataArray.append(textfieldText)
        textfieldText = ""
    }
    
    func textIsAppropriate() -> Bool {
        if textfieldText.count >= 3 {
            return true
        }
        return false
    }
}

#Preview {
    TextfieldBootcamp()
}
