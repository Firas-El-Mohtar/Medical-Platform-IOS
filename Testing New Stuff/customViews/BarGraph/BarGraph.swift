//
//  experimental.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 25/01/2023.
//

import SwiftUI

struct BarGraph: View {

    @ObservedObject private var viewModel = BarGraphViewModel()
    var body: some View {
        ZStack(alignment: .bottom){
            VStack(alignment: .leading, spacing: 6) {
                ForEach(viewModel.start..<viewModel.end) { hour in
                    HStack{
                        Text(viewModel.formatTime(hour: hour))
                            .modifier(TimeBarGraphStyle())
                            .frame(width: 55)
                        Rectangle()
                            .frame(width: 275, height: 0.35)
                            .foregroundColor(.gray)
                            
                    }
                       
                }
            }
            .padding(.vertical)
            .frame(alignment: .leading)
            HStack(alignment: .bottom, spacing: 15) {
                ForEach(0..<viewModel.data.count) { index in
                    VStack{
                        BarView(viewModel: viewModel)
                        Spacer() .frame(height:8.5)
                        Text(viewModel.daysOfWeek[index])
                            .modifier(DayBarGraphStyle())
                    }
                }
            }.padding(.leading, 60)
        }
        .padding(.horizontal, 20)
        .padding(5)
        .background(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 0.5).background(.white))
        .frame(width: 400, height: 250)
    }

}

struct experimental_Previews: PreviewProvider {
    static var previews: some View {
        BarGraph().preferredColorScheme(.light)
    }
}
