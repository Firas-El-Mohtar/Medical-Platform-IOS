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
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var phoneNumber = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    @State private var register = false
    @ObservedObject var viewModel = AuthenticationViewModel()
    
    var body: some View {
        ZStack (alignment: .leading){
            VStack(alignment: .leading, spacing: 20){
                
                Text("Let's setup your \nprofile")
                    .modifier(TextTitleStyle())
                    .padding(.bottom, 10)
                
                Text("Please enter valid data as this is a crucial step for your profile")
                    .modifier(TextDescriptionStyle())
                
                TextField("Enter your First Name", text: $firstName)
                    .modifier(EditTextStyle())
      
                TextField("Enter your Last Name", text: $lastName)
                    .modifier(EditTextStyle())
          
                TextField("Enter your Email or Phone Number", text: $email)
                    .modifier(EditTextStyle())
                
                TextField("Enter your Password", text: $password)
                    .modifier(EditTextStyle())
                                
                TextField("Confirm Your Password", text: $confirmPassword)
                    .modifier(EditTextStyle())

                Button(action: {
                    viewModel.postSignUpData(signUpData: SignUpPost(email: email, password: password, FirstName: firstName, LastName: lastName, PhoneNumber: nil))
                    register = true
                }) {
                    Text("Register")
                        .modifier(ButtonFullScreenStyle())
                   
                }
                .padding(.top, 15)
                
                
                Spacer()
                NavigationLink(destination: HomeScreen().navigationBarBackButtonHidden(true), isActive: $register){
                    }
                
                }
            .padding([.leading, .trailing], 20)
            }
        .modifier(BackgroundStyle())
        }
}

struct RegisterScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreen().preferredColorScheme(.dark)
    }
}
