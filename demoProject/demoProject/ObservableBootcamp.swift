//
//  ObservableBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 14/01/25.
//

import SwiftUI

//class ObservableViewModel: ObservableObject {
//    @Published var title: String = "Some title"
//}

//struct ObservableBootcamp: View {
//    @StateObject private var viewModel = ObservableViewModel()
//    
//    var body: some View {
//        VStack(spacing: 40) {
//            Button(viewModel.title) {
//                viewModel.title = "New title!"
//            }
//            
//            SomeChildView(viewModel: viewModel)
//            
//            SomeThirdView()
//        }
//        .environmentObject(viewModel)
//    }
//}

//struct SomeChildView: View {
//    @ObservedObject var viewModel: ObservableViewModel
//    
//    var body: some View {
//        Button(viewModel.title) {
//            viewModel.title = "Second view!"
//        }
//    }
//}

//struct SomeThirdView: View {
//    @EnvironmentObject var viewModel: ObservableViewModel
//    
//    var body: some View {
//        Button(viewModel.title) {
//            viewModel.title = "Third view!"
//        }
//    }
//}

// New iOS 17 versiona and above

@Observable class ObservableViewModel {
    var title: String = "Some title"
    @ObservationIgnored var subtitle: String = "" // if we dont this to be updated that we use ignored just opposite we use published to those we want to see update.
}

struct ObservableBootcamp: View {
    @State private var viewModel = ObservableViewModel()
    
    var body: some View {
        VStack(spacing: 40) {
            Button(viewModel.title) {
                viewModel.title = "New title!"
            }
            
            SomeChildView(viewModel: viewModel)
            
            SomeThirdView()
        }
        .environment(viewModel)
    }
}

struct SomeChildView: View {
    @Bindable var viewModel: ObservableViewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Second view!"
        }
    }
}

struct SomeThirdView: View {
    @Environment(ObservableViewModel.self) var viewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Third view!"
        }
    }
}

#Preview {
    ObservableBootcamp()
}
