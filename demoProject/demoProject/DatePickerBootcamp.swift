//
//  DatePickerBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 07/01/25.
//

import SwiftUI

struct DatePickerBootcamp: View {
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    
    var body: some View {
        VStack {
            Text("SELECTED DATE IS: ")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            //DatePicker("Select a date:", selection: $selectedDate)
            //DatePicker("Select Date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
            DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date, .hourAndMinute])
                .accentColor(.red)
                .datePickerStyle(
                    CompactDatePickerStyle()
                    //GraphicalDatePickerStyle()
                    //WheelDatePickerStyle()
                )
        }
    }
}

#Preview {
    DatePickerBootcamp()
}
