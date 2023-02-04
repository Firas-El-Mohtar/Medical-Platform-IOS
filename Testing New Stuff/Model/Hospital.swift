//
//  Hospital.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 04/02/2023.
//

import Foundation


struct Hospital {
    let hospitalId: String
    let hospitalName: String
    let hospitalCode: String
    let hospitalLocation: String
    let isAvailable: Bool?
    let departments: [Int: String]
    let hasIsolationRoom: Bool?
}
