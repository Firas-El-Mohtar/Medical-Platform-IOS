//
//  RegisterScreen.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 07/01/2023.
//

import SwiftUI

struct RegisterScreen: View {

    var body: some View {
        RegisterView()
    }
    
}

struct RegisterView : View {
    
    // Registration data
    @State private var register = false
    @State private var registrationIndex: Int = 0
    @ObservedObject var viewModel = AuthenticationViewModel()
    
    
    // first tab data
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var phoneNumber = ""
    @State private var password = ""
    @State private var isPasswordHidden: Bool = true
    
    // second tab data
    @State var dateOfBirth = Date()
    @State var emergencyContact: String = ""
    @State var gender: String = ""
    
    // third tab data
    
    
    var body: some View {
        ZStack (alignment: .leading){
            VStack(alignment: .leading, spacing: 20){
                
                Text("Let's setup your \nprofile")
                    .modifier(TextTitleStyle())
                    .padding(.bottom, 10)
                
                Text("Please enter valid data as this is a crucial step \nfor your profile")
                    .modifier(TextDescriptionStyle())
                    .fixedSize(horizontal: false, vertical: true)
                
                NavigationLink(destination: HomeScreen().navigationBarBackButtonHidden(true), isActive: $viewModel.validRegistration){
                  
                    }
                
                switch(registrationIndex) {
                case 0:
                    FirstRegistrationTab(viewModel: viewModel)
                case 1:
                    SecondRegistrationTab(viewModel: viewModel)
                case 2:
                    ThirdRegistrationTab(viewModel: viewModel)
                default:
                    Spacer()
                    
                }
                
                
                Spacer()
                
                HStack {
                    if registrationIndex != 0 {
                        Image(systemName: "arrow.left")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 20, height: 20)
                            .padding(.trailing, 15)
                            .onTapGesture {
                                registrationIndex = registrationIndex - 1
                            }
                    }
                    Spacer()
                    
                    if registrationIndex < 2 {
                        Image(systemName: "arrow.forward")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 20, height: 20)
                            .padding(.leading, 15)
                            .onTapGesture {
                                registrationIndex = registrationIndex + 1
                            }
                    }
                    
                    if registrationIndex == 2 {
                        Button(action: {
                            viewModel.login(userData: LoginPost(email: email, password: password))
                
                        }) {
                            Text("Log In")
                        }

                        NavigationLink(destination: HomeScreen().navigationBarBackButtonHidden(true), isActive: $viewModel.validRegistration){
                          
                            }
                    }
                }
                Spacer()
                    .frame(height: 25)
            
            }
            .padding([.leading, .trailing], 20)
            
            if viewModel.isLoading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
                    .scaleEffect(2)
            }
        }
        .modifier(BackgroundStyle())
        .alert(isPresented: Binding<Bool>(
                get: { viewModel.authenticationError != "" },
                set: { _ in viewModel.authenticationError = "" }
        )) {
            Alert(title: Text("Error"), message: Text(viewModel.authenticationError), dismissButton: .default(Text("OK")))
        }
        }
    
}

struct RegisterScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreen().preferredColorScheme(.dark)
    }
}
