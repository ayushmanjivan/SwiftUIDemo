//
//  TextBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 27/12/24.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!".capitalized)
        //            .font(.body)
        //            .fontWeight(.semibold)
        //            .bold()
        //            .underline()
        //            .underline(true, color: .red)
        //            .italic()
        //            .strikethrough()
        //            .strikethrough(true, color: .green)
        //    .font(.system(size: 20.0, weight: .semibold, design: .rounded))
        //    .baselineOffset(10.0)
        //    .kerning(2.0)
            .multilineTextAlignment(.center)
            .foregroundColor(.red)
            .frame(width: 200, height: 100, alignment: .center)
            .minimumScaleFactor(0.1)
    }
}

#Preview {
    TextBootcamp()
}
