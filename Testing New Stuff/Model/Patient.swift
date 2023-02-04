//
//  Patient.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 04/02/2023.
//

import Foundation

struct Patient {
    let id: Int
    let patientFirstName: String
    let patientLastName: String
    let medicalRecord: [String: String]
    let emergencyContactName: String
    let emergencyContactNumber: String
    let age: Int
    let gender: String
    let nationality: String
    let drName: [String: String]
}
