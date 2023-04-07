//
//  DoctorChip.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 25/01/2023.
//

import SwiftUI

struct DoctorChip: View {
    var body: some View {
        ZStack{
            HStack{
                Image(systemName: "person")
                Text("Firas El Mohtar")
                    .modifier(TextViewChip())
            }
        }
        .padding(10)
        .background(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 0.51)
                        .background(.white))
        .frame(width: .infinity, height: 50)
    }
}

struct DoctorChip_Previews: PreviewProvider {
    static var previews: some View {
        DoctorChip()
    }
}
