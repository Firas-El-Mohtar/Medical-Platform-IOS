//
//  HomeScreen.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 15/01/2023.
//

import SwiftUI

struct HomeScreen: View {
    
    
    var body: some View {
        HomeView()
            .navigationBarHidden(true)
            
    }
}

struct HomeView: View {
    @State var selectedTab: Tabs = .home
       var body: some View {

           ZStack {
              switch selectedTab {
              case .home:
                  HomeTabView()
              case .doctors:
                  DoctorTab()
              case .pharmacies:
                  Text("Hello pharmacies")
              case .profile:
                  Text("Hello profile")
              }
               CustomTabBar(selectedTab: $selectedTab)
                   .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
           }
               
       }
}


struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen().preferredColorScheme(.light)
    }
}
