//
//  AlertView.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 12/03/2023.
//

import SwiftUI

struct AlertView: View {
    let title: String
    let message: String
    let buttonText: String
    let buttonAction: () -> Void
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title)
                .padding(.bottom, 10)
            Text(message)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
            Button(action: buttonAction) {
                Text(buttonText)
                    .fontWeight(.bold)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 20)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView(title: "title", message: "message", buttonText: "button", buttonAction: {})
    }
}
