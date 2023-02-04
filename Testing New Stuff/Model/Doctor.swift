//
//  Doctor.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 04/02/2023.
//

import Foundation


struct Doctor {
    let id: String
    let firstName: String
    let lastName: String
    let medicalRecord: [String: String]
    let emergencyContactName: String
    let emergencyContactNumber: String
    let speciality: String
    let age: Int
    let gender: String
    let nationality: String
    let licenseNumber: String
    let boardCertifiicate: String
    let hospitalAffliation: String
    let schedule: [String: Date]
    let patients: [String: String]
}
