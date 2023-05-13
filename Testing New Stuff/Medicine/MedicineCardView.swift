//
//  MedicineCardView.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 07/04/2023.
//

import SwiftUI

struct MedicineCardView: View {
    let medicine: Medicine
    var body: some View {
    HStack(){
        Image(systemName: "rectangle")
            .resizable()
            .frame(width: 50, height: 65)
        VStack (alignment: .leading, spacing: 5){
            Text("\(medicine.name)")
            Text(medicine.description)
                .modifier(DoctorNameStyle())
            }
        }
    .padding()
//    .background(RoundedRectangle(cornerRadius: 10)
//                    .stroke(Color.black, lineWidth: 1)
//                    .background(.white))
//    .frame(width: 350, height: 100)
    }
    
}

struct MedicineCardView_Previews: PreviewProvider {
    static var previews: some View {
        MedicineCardView(medicine: Medicine(id: "1", name: "Aspirin", description: "Pain reliever and anti-inflammatory drug", price: ["USD": "5.99", "EUR": "4.99"]))
    }
}
