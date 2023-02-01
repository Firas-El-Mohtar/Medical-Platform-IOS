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
    
    @State private var something = ""
    @State private var register = false
    @ObservedObject var viewModel = AuthenticationViewModel()
    
    var body: some View {
        ZStack (alignment: .leading){
            VStack(alignment: .leading, spacing: 20){
                
                Text("Let's setup your \nprofile")
                    .modifier(TextTitleStyle())
                    .padding(.bottom, 10)
                
                Text("Please enter valid data \nas this is a crucial step\nfor your profile")
                    .modifier(TextDescriptionStyle())
                
                TextField("Enter your First Name", text: $something)
                    .modifier(EditTextStyle())
      
                TextField("Enter your Last Name", text: $something)
                    .modifier(EditTextStyle())
          
                TextField("Enter your Email or Phone Number", text: $something)
                    .modifier(EditTextStyle())
                
                TextField("Enter your Password", text: $something)
                    .modifier(EditTextStyle())
                                
                TextField("Confirm Your Password", text: $something)
                    .modifier(EditTextStyle())

                Button(action: {
                    // viewmodel.register
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
