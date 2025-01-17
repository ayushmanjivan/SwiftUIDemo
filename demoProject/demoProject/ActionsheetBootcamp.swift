//
//  ActionsheetBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 06/01/25.
//

import SwiftUI

struct ActionsheetBootcamp: View {
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionsheetOption = .isOtherPost
    
    enum ActionsheetOption {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
//        Button("Click ok"){
//            showActionSheet.toggle()
//        }
        
        HStack {
            Circle()
                .frame(width: 30, height: 30)
            Text("username")
            Spacer()
            Button(action: {
                actionSheetOption = .isMyPost
                showActionSheet.toggle()
            }, label: {
                Image(systemName: "ellipsis")
            })
            .accentColor(.primary)
        }
        .padding(.horizontal, 20)
        
        Rectangle()
            .aspectRatio(1.0, contentMode: .fit)
        
//        .actionSheet(isPresented: $showActionSheet) {
//            ActionSheet(title: Text("This is the action title"))
//        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
//        return ActionSheet(title: Text("This is the title!!"))
//        let button1: ActionSheet.Button = .default(Text("Default"))
//        let button2: ActionSheet.Button = .destructive(Text("Destructive"))
//        let button3: ActionSheet.Button = .cancel()
//        
//        return ActionSheet(
//            title: Text("This is the title"),
//            message: Text("This is the message."),
//            buttons: [button1, button2, button3]
//        )
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            
        }
        
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("What would you like to do?")
        
        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(title: title,
                               message: nil,
                               buttons: [shareButton, reportButton, deleteButton, cancelButton])
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, cancelButton])
        }
    }
}

#Preview {
    ActionsheetBootcamp()
}
