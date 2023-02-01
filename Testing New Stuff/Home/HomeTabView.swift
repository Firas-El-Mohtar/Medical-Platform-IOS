//
//  HomeTabView.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 16/01/2023.
//

import SwiftUI

struct HomeTabView: View {
    
    @ObservedObject private var viewModel = HomeViewModel()

    let items: [DoctorCardView] = [DoctorCardView(), DoctorCardView(), DoctorCardView(), DoctorCardView(), DoctorCardView()]
    @State var search = ""
    
    var body: some View {
        
        ZStack {
            VStack (alignment: .leading, spacing: 5) {
                    HStack(alignment: .top) {
                            Image(systemName: "qrcode")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 30, height: 30)
                            Spacer()
                            Image(systemName: "person.crop.circle")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 30, height: 30)
                        
                    }      .padding(.horizontal, 25)
                    .padding(.top, 25)
                    
                    Spacer()
                    
                    Text("Hello \(viewModel.userName)")
                        .modifier(TextSubTitleStyle())
                        .padding(.horizontal, 25)
                    
                    
                    SearchBar(text: $search)
                        .padding([.vertical, .horizontal], 25)
                    
                    Text("Upcoming Appointments")
                        .modifier(TextDescriptionStyle())
                        .padding(.horizontal, 25)
                    
               CustomCarousel()
                
            List {
                ForEach(items.indices, id: \.self) { item in
                    items[item]
                }
            }
                            
        }
                
            }
            .modifier(BackgroundStyle())
        }
    
    

    
}


struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}

