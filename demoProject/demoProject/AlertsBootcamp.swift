//
//  AlertsBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 06/01/25.
//

import SwiftUI

struct AlertsBootcamp: View {
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessage = "Default Message"
    @State var backgroundColor: Color = .yellow
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button 1") {
                    alertType = .error
//                    alertTitle = "Error uploading video"
//                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                
                Button("Button 2") {
                    alertType = .success
//                    alertTitle = "successfully uploading video 😍😀"
//                    alertMessage = "Your video is now public"
                    showAlert.toggle()
                }
                
                //            .alert("Alert Title", isPresented: $showAlert) {
                //                Button("ok", role: .cancel) {
                //                    print("ok pressed")
                //                }
                //                Button("Cancel") {
                //                    print("Cancel pressed")
                //                }
                //            } message: {
                //                Text("this is the alert message")
                //            }
            }
            .alert(isPresented: $showAlert) {
                getAlert()
            }
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .success:
            return Alert(title: Text("this was a success!"), message: nil, dismissButton: .default(Text("ok"), action: {
                backgroundColor = .green
            }))
        case .error:
            return Alert(title: Text("there was an error!!"))
        case nil:
            return Alert(title: Text("Error!!"))
        }
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("Ok"))
//        )
        
//        return Alert(
//            title: Text("Alert Title"),
//            message: Text(alertMessage),
//            primaryButton: .destructive(Text("Delete")) {
//                backgroundColor = .red
//                print("OK pressed")
//            },
//            secondaryButton: .cancel {
//                print("Cancel pressed")
//            }
//        )
    }
}

#Preview {
    AlertsBootcamp()
}
