//
//  LoginResponse.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 11/03/2023.
//

import Foundation


struct AuthenticationResponse: Codable {
    let httpStatus: Int
    let data: Patient?
    let message: String?
}

struct UserData: Codable {
    let id: String?
    let email: String
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let medicalRecord: MedicalRecord
    let gender: String?
    let nationality: String?
    let emergencyContact: String?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case email
        case firstName
        case lastName
        case phoneNumber
        case medicalRecord = "medical_Record"
        case gender
        case nationality
        case emergencyContact
    }
}

struct RegisterResponse: Codable {
    let httpStatus: Int
    let data: UserData?
    let message: String?
}
