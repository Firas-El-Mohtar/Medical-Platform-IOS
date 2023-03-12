//
//  LoginScreen.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 07/01/2023.
//

import SwiftUI

struct LoginScreen: View {
    var body: some View {
        LoginView()
    }
    
}

struct LoginView : View {
    @State private var email = ""
    @State private var password = ""
    @State private var login = false
    @ObservedObject var viewModel = AuthenticationViewModel()
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            
            Text("Let's sign you in")
                .modifier(TextTitleStyle())
                .padding(.bottom, 10)
            
            Text("Welcome Back, \nyou've been missed")
                .modifier(TextSubTitleStyle())
                .padding(.bottom, 45)
            
            TextField("Enter your Email or Phone Number", text: $email)
                .autocapitalization(.none)
                .modifier(EditTextStyle())
                         
            TextField("Enter your Password", text: $password)
                .modifier(EditTextStyle())
            
            Text("Forgot password?")
                .frame(maxWidth: .infinity, alignment: .trailing)
                .modifier(TextDescriptionStyle())
            
            Spacer()
                .frame(height: 50)

            Button(action: {
                viewModel.login(userData: LoginPost(email: email, password: password))
                //login = true
    
            }) {
                Text("Log In")
                    .modifier(ButtonFullScreenStyle())
            }

            NavigationLink(destination: HomeScreen().navigationBarBackButtonHidden(true), isActive: $login){
              
                }
            
            Spacer()
        
        
            }
        .padding([.leading, .trailing], 25)
        .modifier(BackgroundStyle())
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen().preferredColorScheme(.dark)
    }
}
