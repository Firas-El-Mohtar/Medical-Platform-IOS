//
//  DoctorCardView.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 23/01/2023.
//

import SwiftUI

struct DoctorCardView: View {
    let doctor: Doctor
    var body: some View {
    HStack{
        Image(systemName: "rectangle")
            .resizable()
            .frame(width: 50, height: 65)
        VStack (alignment: .leading, spacing: 5){
            Text("\(doctor.firstName) \(doctor.lastName)")
            Text(doctor.speciality)
                .modifier(DoctorNameStyle())
            HStack{
                Image(systemName: "star")
                Text("4.5")
                Spacer()
                Image(systemName: "clock")
                Text("10:00 - 5:00")
                    .padding(.horizontal, 15)
            }
            }
        }
    .padding()
    .background(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 1)
                    .background(.white))
    .frame(width: 350, height: 100)
    }
    
}


struct DoctorCardView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorCardView(doctor:   Doctor(
            id: "5",
            firstName: "Jane",
            lastName: "Smith",
            medicalRecord: ["Blood Type": "AB-", "Allergies": "Pollen"],
            emergencyContactName: "John Doe",
            emergencyContactNumber: "555-5678",
            speciality: "Dermatology",
            age: 42,
            gender: "Female",
            nationality: "Canadian",
            licenseNumber: "67890",
            boardCertifiicate: "Dermatology",
            hospitalAffliation: "St. Joseph's Hospital",
            schedule: ["Thursday": Date(), "Friday": Date(), "Saturday": Date()],
            patients: ["3": "Mike Jones", "4": "Sara Lee"]
        ))
    }
}
