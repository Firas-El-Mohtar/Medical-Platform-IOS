//
//  Patient.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 04/02/2023.
//

import Foundation

struct Patient: Codable {
    let email: String
    let username: String
    let firstname: String
    let lastname: String
    let phonenumber: String
    let medicalRecord: [String]
    let id: Int?
    let emergencyContactName: String?
    let emergencyContactNumber: String?
    let age: Int?
    let gender: String?
    let nationality: String?
    let drName: [String: String]?
}
