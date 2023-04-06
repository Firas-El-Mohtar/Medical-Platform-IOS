//
//  SwiftUIView.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 28/01/2023.
//

import SwiftUI

struct TimePicker: View {
    @State var selectedDate: Date = Date()
    @State var selectedHour: String = ""
    let validHours: [String] = ["8:00 AM", "9:00 AM", "10:00 AM", "11:00 AM", "12:00 PM", "1:00 PM", "2:00 PM", "3:00 PM","4:00 PM","5:00 PM","6:00 PM"]
    let minimumDate = Calendar.current.date(byAdding: .day, value: -7, to: Date())!
    let maximumDate = Calendar.current.date(byAdding: .day, value: 127, to: Date())!
        var body: some View {
            VStack{
                DatePicker("Select a date", selection: $selectedDate, in: minimumDate...maximumDate, displayedComponents: .date)
            }
        
        Picker("Select an hour", selection: $selectedHour) {
            ForEach(validHours, id: \.self) { hour in
                Text("\(hour)").tag(hour)
            }
        }.pickerStyle(WheelPickerStyle())
            }

    
    
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TimePicker()
    }
}
