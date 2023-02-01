//
//  SwiftUIView.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 21/01/2023.
//

import SwiftUI

struct CustomCarousel: View {
    @State private var offset = 0
    
    var width = UIScreen.main.bounds.width

    var body: some View {
        TabView {
            ForEach(0 ..< 5) { item in
                AppointmentCardView()
            }
        }
        .tabViewStyle(.page)
        .frame(height: 350)
    }
}

struct CustomCarousel_Previews: PreviewProvider {
    static var previews: some View {
        CustomCarousel()
    }
}
