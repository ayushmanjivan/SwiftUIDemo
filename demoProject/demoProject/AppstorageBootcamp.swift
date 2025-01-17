//
//  AppstorageBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 08/01/25.
//

import SwiftUI

struct AppstorageBootcamp: View {
   // @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name: String = "Nick"
                currentUserName = name
                //UserDefaults.standard.set(name, forKey: "name")
            }
        }
//        .onAppear {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

#Preview {
    AppstorageBootcamp()
}
