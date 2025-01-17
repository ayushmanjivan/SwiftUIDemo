//
//  FocusStateBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 09/01/25.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
    @State private var username: String = ""
   // @FocusState private var usernameInFocus: Bool
    @State private var password: String = ""
  //  @FocusState private var passwordInFocus: Bool
    @FocusState private var fieldinFocus: OnboardingField?
    
    var body: some View {
        VStack(spacing: 40) {
            TextField("Add your name here", text: $username)
                .focused($fieldinFocus, equals: .username)
                //.focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add your password here", text: $password)
                .focused($fieldinFocus, equals: .password)
                //.focused($passwordInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("SIGN UP") {
                let usernameIsValid = username.isEmpty
                let passwordIsValid = password.isEmpty
                if usernameIsValid && passwordIsValid {
                    print("sign up")
                } else if usernameIsValid {
                    fieldinFocus = .password
//                    usernameInFocus = false
//                    passwordInFocus = true
                } else {
                    fieldinFocus = .username
//                    usernameInFocus = true
//                    passwordInFocus = false
                }
            }
            .font(.headline)
            .foregroundColor(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.blue)
            .cornerRadius(10)
            
//            Button("Focus button toggle") {
//                usernameInFocus.toggle()
//            }
//            .font(.headline)
//            .foregroundColor(.white)
//            .frame(height: 55)
//            .frame(maxWidth: .infinity)
//            .background(.blue)
//            .cornerRadius(10)
        }
        .padding(40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.usernameInFocus = true
//            }
//        }
    }
}

#Preview {
    FocusStateBootcamp()
}
