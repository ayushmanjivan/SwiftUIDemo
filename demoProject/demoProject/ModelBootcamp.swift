//
//  ModelBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 08/01/25.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
//    @State var users: [String] = [
//        "Nick", "Emily", "Samantha", "David", "chris"
//    ]
    
    @State var users: [UserModel] = [
        UserModel(displayName: "Nick", userName: "nick123", followCount: 100, isVerified: true),
        UserModel(displayName: "Emily", userName: "itemily1234", followCount: 66, isVerified: false),
        UserModel(displayName: "Samantha", userName: "Ninja", followCount: 233, isVerified: true),
        UserModel(displayName: "Chris", userName: "chris2309", followCount: 120, isVerified: false)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followCount)")
                                .font(.headline)
                            Text("Followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.vertical, 10)
                }
                
//                ForEach(users, id: \.self) { name in
//                    HStack(spacing: 15) {
//                        Circle()
//                            .frame(width: 35, height: 35)
//                        Text(name)
//                    }
//                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelBootcamp()
}
