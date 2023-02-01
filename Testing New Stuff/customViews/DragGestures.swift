//
//  DragGestures.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 29/01/2023.
//

import SwiftUI

struct DragGestureView: View {
    @State private var offset = CGSize.zero

    var body: some View {
        
        VStack{
            Text("Width: \(offset.width), Height: \(offset.height)")
            ZStack{
                ForEach(0...3, id: \.self) { index in
                    HStack {
                        Spacer(minLength: 0)
                        AppointmentCardView()
                            .offset(x: -CGFloat(index * 5), y: CGFloat(index * 5))
                            .offset(offset)
                            .gesture(
                               DragGesture()
                                   .onChanged { value in
                                       self.offset.width = value.translation.width
                                   }
                                   .onEnded { value in
                                       self.offset = .zero
                                       if value.translation.width < -150 {
                                           self.offset.width = -350
                                       }
                                   }
                        )
                        Spacer(minLength: 0)
                    }
                }
            }

        }

    }
}


struct DragGestures_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureView()
    }
}
