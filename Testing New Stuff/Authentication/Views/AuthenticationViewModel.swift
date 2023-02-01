//
//  AuthenticationViewModel.swift
//  Testing New Stuff
//
//  Created by Firas El Mohtar on 26/12/2022.
//

import Foundation
import SwiftUI

class AuthenticationViewModel : ObservableObject {
    
    // Used to verify whether the user is logged in or not
    @AppStorage(Constants.AUTHENTICATION_KEY) var authenticated: Bool = false {
        willSet { objectWillChange.send() }
    }
    
    @Published var authenticationType: AuthenticationType = AuthenticationType.Login
    
    
    @Published var email: String = ""
    @Published var phoneNumber: Int = 0
    @Published var password: String = ""
    @Published var doctorID: String = ""
    @Published var FirstName: String = ""
    @Published var lastName: String = ""
    @Published var logIn: Bool = false
    @Published var register: Bool = false
    
    
}

enum AuthenticationType {
    case Login, register
}


