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
    @State private var isPasswordHidden: Bool = true
    @ObservedObject var viewModel = AuthenticationViewModel()
    
    
    var body: some View {
        
        ZStack(alignment: .center){
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
                             
                PasswordField(viewModel: viewModel)
                
                Text("Forgot password?")
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .modifier(TextDescriptionStyle())
                
                Spacer()
                    .frame(height: 50)

                Button(action: {
                    print("email: \(email), password: \(viewModel.password)")
                    viewModel.login(userData: LoginPost(email: email, password: viewModel.password))
        
                }) {
                    Text("Log In")
                        .modifier(ButtonFullScreenStyle())
                }

                NavigationLink(destination: HomeScreen().navigationBarBackButtonHidden(true), isActive: $viewModel.validRegistration){
                  
                    }
                
                Spacer()
            
            
                }
            .padding([.leading, .trailing], 25)
            .alert(isPresented: Binding<Bool>(
                    get: { viewModel.authenticationError != "" },
                    set: { _ in viewModel.authenticationError = "" }
            )) {
                Alert(title: Text("Error"), message: Text(viewModel.authenticationError), dismissButton: .default(Text("OK")))
            }
            
            if viewModel.isLoading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
                    .scaleEffect(2)
            }
        
            }.modifier(BackgroundStyle())
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen().preferredColorScheme(.dark)
    }
}
