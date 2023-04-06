//
//  DoctorDetails.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 06/04/2023.
//

import SwiftUI

struct DoctorDetails: View {
    let doctor: Doctor
    var body: some View {
        ScrollView{
            VStack{
                HStack(spacing: 20){
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 45, height: 45)
                    VStack(alignment: .leading){
                        Text("\(doctor.firstName) \(doctor.lastName)")
                        StarRating(rating: 3.5)
                    }
                }
                Text("\(doctor.speciality)")
                Spacer()
                BarGraph()
            }
        }
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
