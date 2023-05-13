//
//  ProfileView.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 08/04/2023.
//

import SwiftUI

struct ProfileView: View {
    @State var allergies: [String] = []
    @State var chronicDiseases: [String] = []
    @State var medications: [String] = []
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                HStack{
                    Spacer()
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 75, height: 75)
                    Spacer()
                    VStack{
                        Text("Firas El Mohtar")
                            .modifier(TextSubTitleStyle())
                        Text("20, Male")
                    }
                    Spacer()
                }.padding()
                PersonalInfoView()
                Text("Appiontments pending approval")
                    .modifier(TextSubTitleStyle())
                    .padding([.trailing, .leading])
                CustomCarousel()
                MedicalHistory()
                    .padding([.trailing, .leading])
                AddDataView(data: $allergies, title: "Allergy")
                    .padding([.trailing, .leading])
                AddDataView(data: $chronicDiseases, title: "Chronic Disease")
                    .padding([.trailing, .leading])
                AddDataView(data: $medications, title: "Medication")
                    .padding([.trailing, .leading])
                
                Button(action: {
                    // api call
                }) {
                    Text("Update Profile")
                        .modifier(ButtonFullScreenConfirmStyle())
                } .padding([.trailing, .leading])
                
            }
            Spacer()
                .frame(height:100)
        }.modifier(BackgroundStyle())
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
