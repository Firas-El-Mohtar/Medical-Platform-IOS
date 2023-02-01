//
//  ExperimentalCarousel.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 29/01/2023.
//

import SwiftUI

struct CarouselView: View {
    
    let appointments: [AppointmentCardView] = [AppointmentCardView(),AppointmentCardView(),AppointmentCardView(),AppointmentCardView(),AppointmentCardView(),AppointmentCardView(),AppointmentCardView(),AppointmentCardView(),AppointmentCardView()]
    
    @State private var offset = CGSize.zero
    
    @State var indicies = Array(0..<6)
    var body: some View {
        ZStack{
            ForEach(indicies.reversed(), id: \.self) { index in
                HStack{
                    Spacer(minLength: 0)
                    AppointmentCardView()
                        .gesture(
                           DragGesture()
                               .onChanged { value in
                                   self.offset = value.translation
                               }
                               .onEnded { _ in
                                   self.offset = .zero
                               }
                       )
                        .offset(x: index <= 2 ? CGFloat(index * 5) : 10, y: index<=2 ? -CGFloat(index * 5) : -10)
                    Spacer(minLength: 0)
                }
            }
        }
    }
}



struct ExperimentalCarousel_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView()
    }
}
