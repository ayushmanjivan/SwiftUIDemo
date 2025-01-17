//
//  PickerBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 07/01/25.
//

import SwiftUI

struct PickerBootcamp: View {
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
//        VStack {
//            HStack {
//                Text("Age::")
//                Text(selection)
//            }
//            Picker(
//                selection: $selection,
//                label: Text("Picker"),
//                content: {
//                    ForEach(18..<100) { number in
//                        Text("\(number)")
//                            .font(.headline)
//                            .foregroundColor(.red)
//                            .tag("\(number)")
//                    }
//                })
//            .pickerStyle(WheelPickerStyle())
//            //.background(.gray.opacity(0.3))
//        }
        
        
//        Picker(
//            selection: $selection,
//            label:
//                HStack {
//                    Text("Filter: ")
//                    Text(selection)
//                }
//                .font(.headline)
//                .foregroundColor(.white)
//                .padding()
//                .padding(.horizontal)
//                //.colorMultiply(Color.blue)
//                .background(Color.blue)
//                .cornerRadius(10)
//                .shadow(color: .blue.opacity(0.3),
//                        radius: 10, x: 0, y: 10)
//            ,
//            content: {
//                ForEach(filterOptions, id: \.self) { option in
//                    HStack {
//                        Text(option)
//                        Image(systemName: "heart.fill")
//                    }
//                    .tag(option)
//                }
//            })
//        .pickerStyle(MenuPickerStyle())
        
        
        Picker(
            selection: $selection,
            label: Text("Picker"),
            content: {
                ForEach(filterOptions.indices) { index in
                    Text(filterOptions[index])
                        .tag(filterOptions[index])
                }
            })
        .pickerStyle(SegmentedPickerStyle())
        //.background(.red)
    }
}

#Preview {
    PickerBootcamp()
}
