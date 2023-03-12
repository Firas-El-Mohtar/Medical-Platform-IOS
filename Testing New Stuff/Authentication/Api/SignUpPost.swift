//
//  SignUpPost.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 01/03/2023.
//

import Foundation


struct SignUpPost : Codable {
    let email, password, FirstName, LastName: String
    let PhoneNumber: String?
}

struct LoginPost : Codable {
    let email, password: String
    
}




