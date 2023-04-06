//
//  SecondRegistrationTab.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 12/03/2023.
//

import SwiftUI

struct SecondRegistrationTab: View {
    
    @ObservedObject var viewModel: AuthenticationViewModel
    
    let genders: [String] = ["Male", "Female"]
    let nationalities = Locale.isoRegionCodes.map { code in
         (Locale.current.localizedString(forRegionCode: code) ?? "").capitalized
     }.sorted()
    
    var body: some View {
        VStack (spacing: 10){
            DatePicker("Date of Birth", selection: $viewModel.dateOfBirth, in : ...Date(), displayedComponents: .date)
              
            
            TextField("Emergency Contact", text: $viewModel.emergencyContact)
                .modifier(EditTextStyle())
            
            Text("Pick your Gender")
                .padding(.bottom, 20)
            Picker("Select your Gender", selection: $viewModel.gender) {
                ForEach(genders, id: \.self) { gender in
                    Text("\(gender)").tag(gender)
                }
            }
            .pickerStyle(WheelPickerStyle())
            .frame(height: 50)
            
        
            Text("Pick your Nationality")
                .padding(50)
            Picker("Nationality", selection: $viewModel.selectedNationalityIndex) {
                ForEach(0..<nationalities.count) { index in
                    Text(nationalities[index])
                }
            }
            .pickerStyle(.wheel)
            .frame(width: 100, height: 80)

    
        }
    }
}

struct SecondRegistrationTab_Previews: PreviewProvider {
    static var previews: some View {
        SecondRegistrationTab(viewModel: AuthenticationViewModel()).preferredColorScheme(.dark)
    }
}
