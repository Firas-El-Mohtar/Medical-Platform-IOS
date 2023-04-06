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
    @Published var phoneNumber: String = ""
    @Published var password: String = ""
    @Published var doctorID: String = ""
    @Published var FirstName: String = ""
    @Published var lastName: String = ""
    
    @Published var register: Bool = false
    @Published var login: Bool = false
    
    @Published var validRegistration: Bool = false
    @Published var isLoading: Bool = false
    
    @Published var authenticationError: String = ""
    
    
    // Register Data from screens
    // Registration data
    
    // first tab data
    @Published  var firstName = ""
    @Published  var isPasswordHidden: Bool = true
    
    // second tab data
    @Published var dateOfBirth = Date()
    @Published var emergencyContact: String = ""
    @Published var gender: String = ""
    @Published var selectedNationalityIndex = 0
    
    // third tab data
    
    
    @Published var allergyText: [String] = []
    @Published var newAllergy: String = ""
    
    @Published var chronicDiseaseText: [String] = []
    @Published var newChronicDisease: String = ""

    @Published var medicationText: [String] = []
    @Published var newMedication: String = ""
    
    
    @Published var allergyIndex: Int = 0
    @Published var chronicDiseaseIndex: Int = 0
    @Published var newMedicationIndex: Int = 0
    
    func signUp(signUpData: SignUpPost) {
        isLoading = true
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
                DispatchQueue.main.async {
                    self.authenticationError = error!.localizedDescription
                }
                return
            }

            if let httpResponse = response as? HTTPURLResponse {
                print("Status code: \(httpResponse.statusCode)")
            }

            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let loginResponse = try decoder.decode(AuthenticationResponse.self, from: data)
                    print(loginResponse)
                    if loginResponse.message != nil {
                        DispatchQueue.main.async {
                            self.authenticationError = loginResponse.message ?? ""
                            self.isLoading = false
                            if self.authenticationError.isEmpty {
                                self.validRegistration = true
                            }
                        }
                    }
                } catch {
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
    
   
    func login(userData: LoginPost) {
//        isLoading = true
//        guard let url = URL(string: "http://3.73.164.18/api/v1/loginService/login") else { return }
//
//          var request = URLRequest(url: url)
//          request.httpMethod = "POST"
//          request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//
//          let userData = LoginPost(email: email, password: password)
//
//          let encoder = JSONEncoder()
//          do {
//              let jsonData = try encoder.encode(userData)
//              request.httpBody = jsonData
//          } catch {
//              print(error.localizedDescription)
//              DispatchQueue.main.async {
//                  self.authenticationError = error.localizedDescription
//              }
//              return
//          }
//
//          URLSession.shared.dataTask(with: request) { data, response, error in
//              guard error == nil else {
//                  print(error!.localizedDescription)
//                  DispatchQueue.main.async {
//                      self.authenticationError = error!.localizedDescription
//                  }
//                  return
//              }
//
//              if let httpResponse = response as? HTTPURLResponse {
//                  print("Status code: \(httpResponse.statusCode)")
//              }
//
//              if let data = data {
//                  do {
//                      let decoder = JSONDecoder()
//                      let loginResponse = try decoder.decode(AuthenticationResponse.self, from: data)
//                      print(loginResponse)
//                      if loginResponse.message != nil {
//                          DispatchQueue.main.async {
//                              self.authenticationError = loginResponse.message ?? ""
//                              self.isLoading = false
//                              if self.authenticationError.isEmpty {
//                                  self.validRegistration = true
//                              }
//                          }
//                      }
//                  } catch {
//                      print(error.localizedDescription)
//                  }
//              }
//          }.resume()
        
        self.validRegistration = true
    }


    
}

enum AuthenticationType {
    case Login, register
}



