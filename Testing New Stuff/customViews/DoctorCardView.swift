//
//  DoctorCardView.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 23/01/2023.
//

import SwiftUI

struct DoctorCardView: View {
    
    var body: some View {
    HStack{
        Image(systemName: "rectangle")
            .resizable()
            .frame(width: 50, height: 65)
        VStack (alignment: .leading, spacing: 5){
            Text("Dr. Firas El Mohtar")
            Text("Godfather of medicine and biological beings")
                .modifier(DoctorNameStyle())
            HStack{
                Image(systemName: "star")
                Text("4.5")
                Spacer()
                Image(systemName: "clock")
                Text("Hello world")
                    .padding(.horizontal, 15)
            }
            }
        }
    .padding()
    .background(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 1)
                    .background(.white))
    .frame(width: .infinity, height: 100)
    }
}


struct DoctorCardView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorCardView()
    }
}
