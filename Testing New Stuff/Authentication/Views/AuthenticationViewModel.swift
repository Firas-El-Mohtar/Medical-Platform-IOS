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
    
    func postSignUpData(signUpData: SignUpPost) {
        guard let url = URL(string: "http://3.73.164.18/api/v1/loginService/signup") else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        let encoder = JSONEncoder()
        do {
            let jsonData = try encoder.encode(signUpData)
            request.httpBody = jsonData
        } catch {
            print(error.localizedDescription)
            return
        }

        URLSession.shared.dataTask(with: request) { data, response, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }

            if let httpResponse = response as? HTTPURLResponse {
                print("Status code: \(httpResponse.statusCode)")
            }

            if let data = data {
                print(String(data: data, encoding: .utf8)!)
            }
        }.resume()
    }
    
   
    func login(userData: LoginPost) {
        guard let url = URL(string: "http://3.73.164.18/api/v1/loginService/login") else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        let encoder = JSONEncoder()
        do {
            let jsonData = try encoder.encode(userData)
            request.httpBody = jsonData
        } catch {
            print(error.localizedDescription)
            return
        }

        URLSession.shared.dataTask(with: request) { data, response, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }

            if let httpResponse = response as? HTTPURLResponse {
                print("Status code: \(httpResponse.statusCode)")
            }

            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let loginResponse = try decoder.decode(LoginResponse.self, from: data)
                    print(loginResponse)
                } catch {
                    print(error.localizedDescription)
                }
            }
        }.resume()
        
    }


    
}

enum AuthenticationType {
    case Login, register
}



