//
//  HomeTabView.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 16/01/2023.
//

import SwiftUI
struct HomeTabView: View {
    @ObservedObject private var viewModel = HomeViewModel()
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
    @State var search = ""
    @State var tapped = false
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 5) {
                HStack(alignment: .top) {
                    Image(systemName: "qrcode")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 30, height: 30)
                    Spacer()
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 30, height: 30)
                }
                .padding(.horizontal, 25)
                .padding(.top, 25)
                
                Text("Hello \(viewModel.userName)")
                    .modifier(TextSubTitleStyle())
                    .padding(.horizontal, 25)
                
                SearchBar(text: $search)
                    .padding([.vertical, .horizontal], 25)
                
                ScrollView {
                    LazyVStack(spacing: 10) {
                        Text("Upcoming Appointments")
                            .modifier(TextDescriptionStyle())
                            .padding(.horizontal, 25)
                        
                        CustomCarousel()
                    }
                    ForEach(doctors, id: \.id) { doctor in
                              DoctorCardView(doctor: doctor)
                            .onTapGesture {
        
                            }
                    }
                }
            }
            .modifier(BackgroundStyle())
        }
    }
}


struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeTabView()
            HomeTabView()
        }
    }
}

