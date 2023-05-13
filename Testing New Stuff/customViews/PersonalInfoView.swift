//
//  PersonalInfoView.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 13/04/2023.
//

import SwiftUI

struct PersonalInfoView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Personal Info")
                .modifier(TextSubTitleStyle())
                .padding([.trailing, .leading])
            Text("Phone Number: 03002623")
                .padding([.trailing, .leading])
            Text("Emergency Contact: Firas El Mohtar")
                .padding([.trailing, .leading])
            Text("Emergency Contact Number: 03002623")
                .padding([.trailing, .leading, .bottom])
        }
    }
}

struct PersonalInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalInfoView()
    }
}
