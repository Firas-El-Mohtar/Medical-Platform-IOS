//
//  Constants.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 06/01/2023.
//

import Foundation
import SwiftUI

struct Constants {
    static let AUTHENTICATION_KEY = "Authentication_Key"
    static let USER_MODE_KEY = "User_Mode_Key"
    
    static let signUpEndPoint = "http://localhost:5287/api/v1/loginService/signup"
    static let loginEndPoint = "http://localhost:5287/api/v1/loginService/login"
    
    static let backgroundColor = Color(UIColor.systemGroupedBackground)
    static let editTextBackground = Color(UIColor.systemFill)
}

