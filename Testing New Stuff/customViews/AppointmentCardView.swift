//
//  AppointmentCardView.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 18/01/2023.
//

import SwiftUI

struct AppointmentCardView: View {
    var body: some View {
                
        VStack(alignment: .leading, spacing: 17){
            Text("recieve a regular checkup")
            HStack{
                Image(systemName: "calendar.badge.clock")
                Text("Jan 12, 2023 | 12:15 - 12:45")
            }
            HStack{
                Image(systemName: "mappin.and.ellipse")
                Text("Mount Lebanon Hospital")
            }
            HStack{
                Image(systemName: "person")
                Text("Dr. Firas El Mohtar")
            }

            HStack(alignment: .center){
                Button(action: {

                }, label: {
                        Text("Call")

                })
                    .frame(width: 100)

                Button(action: {

                }, label: {
                        Text("Cancel")

                }).frame(width: 100)
            }
        }.padding()
            .padding(.horizontal, 30)

            .background(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 0.5)
                            .background(.white))

            .frame(width: .infinity, height: 200)
        
    }
}

struct AppointmentCardView_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentCardView()
    }
}


