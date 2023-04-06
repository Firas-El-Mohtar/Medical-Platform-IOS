//
//  PasswordField.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 24/03/2023.
//

import SwiftUI

struct PasswordField: View {
    @ObservedObject var viewModel: AuthenticationViewModel
    var body: some View {
        VStack {
            HStack {
                if viewModel.isPasswordHidden {
                    SecureField("Password", text: $viewModel.password)
                } else {
                    TextField("Password", text: $viewModel.password)
                }
                Button(action: {
                    viewModel.isPasswordHidden.toggle()
                }) {
                    Image(systemName: viewModel.isPasswordHidden ? "eye.slash.fill" : "eye.fill")
                        .foregroundColor(.gray)
                        .padding(.trailing, 10)
                        .frame(height: 25)
                }
            }
            .modifier(EditTextStyle())
        }
    }
}

struct PasswordField_Previews: PreviewProvider {
    static var previews: some View {
        PasswordField(viewModel: AuthenticationViewModel())
    }
}
