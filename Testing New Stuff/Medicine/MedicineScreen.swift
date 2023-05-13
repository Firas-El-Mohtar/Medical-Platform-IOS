//
//  MedicineScreen.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 07/04/2023.
//

import SwiftUI

struct MedicineScreen: View {
    let medicineList = [
        Medicine(id: "1", name: "Aspirin", description: "Pain reliever and anti-inflammatory drug", price: ["USD": "5.99", "EUR": "4.99"]),
        Medicine(id: "2", name: "Ibuprofen", description: "Pain reliever and anti-inflammatory drug", price: ["USD": "8.99", "EUR": "7.49"]),
        Medicine(id: "3", name: "Acetaminophen", description: "Pain reliever and fever reducer", price: ["USD": "6.99", "EUR": "5.99"]),
        Medicine(id: "4", name: "Lisinopril", description: "ACE inhibitor used for treating high blood pressure and heart failure", price: ["USD": "12.99", "EUR": "10.99"]),
        Medicine(id: "5", name: "Metformin", description: "Oral medication for treating type 2 diabetes", price: ["USD": "7.99", "EUR": "6.99"]),
        Medicine(id: "6", name: "Levothyroxine", description: "Thyroid hormone replacement therapy", price: ["USD": "11.99", "EUR": "9.99"]),
        Medicine(id: "7", name: "Atorvastatin", description: "Statins used for lowering cholesterol", price: ["USD": "14.99", "EUR": "12.99"]),
        Medicine(id: "8", name: "Simvastatin", description: "Statins used for lowering cholesterol", price: ["USD": "13.99", "EUR": "11.99"]),
        Medicine(id: "9", name: "Losartan", description: "ARB used for treating high blood pressure and heart failure", price: ["USD": "10.99", "EUR": "9.49"]),
        Medicine(id: "10", name: "Metoprolol", description: "Beta blocker used for treating high blood pressure, heart failure, and angina", price: ["USD": "9.99", "EUR": "8.49"]),
        Medicine(id: "11", name: "Cetirizine", description: "Antihistamine used for treating allergies and hives", price: ["USD": "6.99", "EUR": "5.99"]),
        Medicine(id: "12", name: "Alprazolam", description: "Benzodiazepine used for treating anxiety and panic disorders", price: ["USD": "12.99", "EUR": "10.99"]),
        Medicine(id: "13", name: "Omeprazole", description: "Proton pump inhibitor used for treating acid reflux and stomach ulcers", price: ["USD": "8.99", "EUR": "7.49"]),
        Medicine(id: "14", name: "Fluoxetine", description: "Selective serotonin reuptake inhibitor used for treating depression, anxiety, and OCD", price: ["USD": "11.99", "EUR": "9.99"]),
        Medicine(id: "15", name: "Amoxicillin", description: "Antibiotic used for treating bacterial infections", price: ["USD": "7.99", "EUR": "6.99"])
    ]
    @State var searchText = ""
    var body: some View {
        VStack(alignment: .leading){
                SearchBar(text: $searchText)
                ScrollView{
                    ForEach(medicineList.indices, id:  \.self) { index in
                        MedicineCardView(medicine: medicineList[index])
                    }
                }
            }.padding(25)
            .modifier(BackgroundStyle())
    }
}

struct MedicineScreen_Previews: PreviewProvider {
    static var previews: some View {
        MedicineScreen()
    }
}
