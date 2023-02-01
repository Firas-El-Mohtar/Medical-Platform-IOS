//
//  TabViewModel.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 15/01/2023.
//

import Foundation
import SwiftUI


struct TabViewModel: Identifiable {
    let id: Int
    var title: String
    var image: Image

    func gettabs() -> [TabViewModel] {
        return [
            TabViewModel(id: 1, title: "Appointments", image: Image(systemName: "calendar")),
            TabViewModel(id: 2,title: "Appointments", image: Image(systemName: "calendar")),
            TabViewModel(id: 3,title: "Appointments", image: Image(systemName: "calendar")),
            TabViewModel(id: 4,title: "Appointments", image: Image(systemName: "calendar"))
            ]

    }
}
