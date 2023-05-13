//
//  SignUpPost.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 01/03/2023.
//

import Foundation


struct SignUpPost: Codable {
    let email: String
    let password: String
    let userName: String
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let gender: String?
    let medicalRecord: MedicalRecord
    let nationality: String?
    let emergencyContact: String?
    
    enum CodingKeys: String, CodingKey {
        case email, password, userName, firstName, lastName, phoneNumber, gender, medicalRecord, nationality, emergencyContact
    }
}

struct MedicalRecord: Codable {
    let diseases: [String]
    
    enum CodingKeys: String, CodingKey {
        case diseases = "Diseases"
    }
}

struct LoginPost : Codable {
    let email, password: String
    
}




