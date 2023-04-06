//
//  FirstRegistrationTab.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 12/03/2023.
//

import SwiftUI

struct FirstRegistrationTab: View {
  
    @ObservedObject var viewModel: AuthenticationViewModel
    
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            TextField("Enter your First Name", text: $viewModel.firstName)
                .modifier(EditTextStyle())

            TextField("Enter your Last Name", text: $viewModel.lastName)
                .modifier(EditTextStyle())
      
            TextField("Enter your Email", text: $viewModel.email)
                .modifier(EditTextStyle())
                .autocapitalization(.none)
            
            TextField("Enter your Phone Number", text: $viewModel.phoneNumber)
                .modifier(EditTextStyle())
                
            
            PasswordField(viewModel: viewModel)
        }

    }
}

struct FirstRegistrationTab_Previews: PreviewProvider {
    static var previews: some View {
        FirstRegistrationTab(viewModel:AuthenticationViewModel())
    }
}
