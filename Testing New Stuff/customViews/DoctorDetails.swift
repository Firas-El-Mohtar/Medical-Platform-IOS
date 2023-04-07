//
//  DoctorDetails.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 06/04/2023.
//


import SwiftUI

struct DoctorDetails: View {
    let doctor: Doctor
    @State private var app: Bool = false
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                HStack(spacing: 20){
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 45, height: 45)
                    VStack(alignment: .leading){
                        Text("\(doctor.firstName) \(doctor.lastName)")
                        StarRating(rating: 3.5)
                    }
                }
                .padding([.leading, .top], 55)
                Text("\(doctor.speciality)")
                    .padding([.leading], 55)
                Text("Operating Hours")
                    .padding([.leading], 55)
                BarGraph()
                Text("Works at: \(doctor.hospitalAffliation)")
                    .padding([.leading], 55)
                Text("License Number: \(doctor.licenseNumber)")
                    .padding([.leading], 55)
                Text("Contact Name: \(doctor.emergencyContactName)")
                    .padding([.leading], 55)
                Text("Contact Number: \(doctor.emergencyContactNumber)")
                    .padding([.leading], 55)
                Button(action: {
                    app = true
                }) {
                    Text("Setup Appointment")
                        .modifier(ButtonFullScreenStyle())
                } .padding([.leading], 25)
            }
        }.modifier(BackgroundStyle())
    }
}

struct DoctorDetails_Previews: PreviewProvider {
    static var previews: some View {
        DoctorDetails(doctor: Doctor(
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
