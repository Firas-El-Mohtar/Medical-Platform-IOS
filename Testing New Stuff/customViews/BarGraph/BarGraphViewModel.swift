//
//  BarGraphViewModel.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 28/01/2023.
//

import Foundation
import SwiftUI


class BarGraphViewModel: ObservableObject {
    @Published var data: [CGFloat] = [10,10,10,10,10,10,10]
    @Published var start: Int = 1
    @Published var end: Int = 25
    @Published var daysOfWeek: [String] = ["Mon", "Tues", "Wed", "Thur", "Fri", "Sat", "Sun"]
    
    func formatTime(hour: Int) -> String {
        if hour == 0 {
            return "12:00 AM"
        } else if hour < 12 {
            return "\(hour):00 AM"
        } else if hour == 12 {
            return "12:00 PM"
        } else {
            return "\(hour - 12):00 PM"
        }
    }
    
    // calculates the height of bar segments inbetween each hour (total available space is 21)
    func calculateBarHeight() -> CGFloat {
        return 5.25
    }
    
    func getColor(_ index: Int) -> Color {
       // assign different color to each section
        if index % 2 == 0 {
            return .gray
        } else {
            return .green
        }
       }
}
