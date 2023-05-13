//
//  DoctorTab.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 07/04/2023.
//

import SwiftUI

struct DoctorTab: View {
    let doctors = [
        Doctor(
            id: "1",
            firstName: "John",
            lastName: "Doe",
            medicalRecord: ["Blood Type": "O+", "Allergies": "None"],
            emergencyContactName: "Jane Doe",
            emergencyContactNumber: "555-1234",
            speciality: "Cardiology",
            age: 35,
            gender: "Male",
            nationality: "American",
            licenseNumber: "12345",
            boardCertifiicate: "Cardiology",
            hospitalAffliation: "St. Mary's Hospital",
            schedule: ["Monday": Date(), "Tuesday": Date(), "Wednesday": Date()],
            patients: ["1": "Jane Smith", "2": "Bob Johnson"]
        ), Doctor(
            id: "2",
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
        ),
        Doctor(
            id: "3",
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
        ),
    
        
        Doctor(
            id: "4",
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
        ),
        Doctor(
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
        )
    ]
    @State var searchText: String = ""
    @State var tapped = false
    @State var index = 0
    var body: some View {
        VStack{
            SearchBar(text: $searchText)
                .padding([.vertical, .horizontal], 25)
            ScrollView{
                ForEach(doctors.indices, id: \.self) { index in
                          DoctorCardView(doctor:  doctors[index])
                              .foregroundColor(.black)
                              .background(Color.white)
                              .onTapGesture {
                                  tapped = true
                                  self.index = index
                              }
                  }
                Spacer()
                    .frame(height:100)
                NavigationLink(destination: DoctorDetails(doctor: doctors[index]).navigationBarBackButtonHidden(false), isActive: $tapped){

                    }
            }
        }.modifier(BackgroundStyle())
    }
}

struct DoctorTab_Previews: PreviewProvider {
    static var previews: some View {
        DoctorTab()
    }
}
