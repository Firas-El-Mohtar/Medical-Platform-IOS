//
//  LoginResponse.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 11/03/2023.
//

import Foundation


struct LoginResponse: Codable {
    let httpStatus: Int
    let data: Patient
}

