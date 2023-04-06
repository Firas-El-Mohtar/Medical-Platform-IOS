//
//  Patient.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 04/02/2023.
//

import Foundation

struct Patient: Codable {
    let email: String
    let userName: String
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let medicalRecord: [String: [String]]
    let id: Int?
    let emergencyContact: String?
    let dateOfBirth: Int?
    let gender: String?
    let nationality: String?
    
}
