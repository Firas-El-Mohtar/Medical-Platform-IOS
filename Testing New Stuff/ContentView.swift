//
//  ContentView.swift
//  Testing New Stuff
//
//  Created by Firas El Mohtar on 25/12/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                HomeScreenView()
            }
        }
    }
}

struct HomeScreenView: View {
    
    @ObservedObject var viewModel = AuthenticationViewModel()
    
    var body : some View {
        ZStack {
            VStack{
                Spacer()
                Image(systemName: "waveform.path.ecg.rectangle")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 220)
            
                Spacer()
                    .frame(height: 75)
            
                VStack(alignment: .leading, spacing: 6){
                    Text("Re-Imagine \nthe health sector")
                        .modifier(TextTitleStyle())
                        .padding(.bottom, 10)
                    
                    Text("All your medical needs fulfilled on one platform. Smoothing out the process so you can focus on your recovery and health, leaving the annoying details for us to resolve")
                        .modifier(TextDescriptionStyle())
                        
                }
                .padding([.leading, .trailing], 50)
                
                HStack {
                    Button("Register") {
                        viewModel.authenticationType = AuthenticationType.register
                        viewModel.register = true
                    }
                    .frame(width: 170, height: 50)
                    .modifier(ButtonStyle())
                    .foregroundColor(.primary)

                    Button("Log In") {
                        viewModel.authenticationType = AuthenticationType.Login
                        viewModel.login = true
                    }
                    .frame(width: 170, height: 50)
                    .modifier(ButtonStyle())
                    .foregroundColor(.primary)


                    NavigationLink(destination: LoginScreen(), isActive: $viewModel.login){

                        }
                    
                    NavigationLink(destination: RegisterScreen(), isActive: $viewModel.register){
                        }
                    }
                .padding(.top, 20)
                
                Spacer()
                }
            }
        .modifier(BackgroundStyle())
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}
