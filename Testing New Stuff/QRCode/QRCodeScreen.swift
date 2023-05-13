//
//  QRCodeScreen.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 07/04/2023.
//

import SwiftUI

struct QRCodeScreen: View {
    var body: some View {
        VStack(alignment: .center){
            HStack{
                Spacer()
            }
            Text("Wishing you a \nspeedy recovery")
                .modifier(TextTitleStyle())
            Spacer()
                .frame(height: 150)
            Image(systemName: "qrcode")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 220)
            Spacer()
        }
        .navigationBarTitle("", displayMode: .inline)
             .modifier(BackgroundStyle())
    
    }
}

struct QRCodeScreen_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeScreen()
    }
}
