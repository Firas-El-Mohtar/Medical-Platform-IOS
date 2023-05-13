//
//  CustomTabBar.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 15/01/2023.
//

import SwiftUI

enum Tabs: Int {
    case home = 0
    case doctors = 1
    case pharmacies = 2
    case profile = 3
}

struct CustomTabBar: View {
    
    @Binding var selectedTab: Tabs
    var body: some View {
        HStack(alignment: .center) {
            
            Button{
                selectedTab = .home
            } label: {
                GeometryReader { geo in
                    VStack (alignment: .center, spacing: 2) {
                        Image(systemName: selectedTab == .home ? "house.fill" : "house")
                            .resizable()
                            .scaledToFit()
                            .scaleEffect(selectedTab == .home ? 1.10 : 1.0)
                            .frame(width: 22, height: 22)
                        Text("Home")
                            .modifier(TextViewTabStyle())
                            .font(selectedTab == .home ? .system(size: 15, weight: .bold) : .system(size: 10, weight: .thin)) }
                    .frame(width: geo.size.width, height: geo.size.height)
                    .padding(.top, 4)
                }
            }
            .tint(selectedTab == .home ?  Color(UIColor.tintColor) : Color(UIColor.systemGray))
            
            Button{
                selectedTab = .doctors
            } label: {
                GeometryReader { geo in
                    VStack (alignment: .center, spacing: 2) {
                        Image(systemName: selectedTab == .doctors ? "person.text.rectangle.fill" : "person.text.rectangle")
                            .resizable()
                            .scaledToFit()
                            .scaleEffect(selectedTab == .doctors ? 1.10 : 1.0)
                            .frame(width: 22, height: 22)
                        Text("Doctors")
                            .modifier(TextViewTabStyle())
                            .font(selectedTab == .doctors ? .system(size: 15, weight: .bold) : .system(size: 10, weight: .thin))
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                    .padding(.top, 4)
                }
            }
            .tint(selectedTab == .doctors ?  Color(UIColor.tintColor) : Color(UIColor.systemGray))
            
            Button{
                selectedTab = .pharmacies
            } label: {
                GeometryReader { geo in
                    VStack (alignment: .center, spacing: 2) {
                        Image(systemName: selectedTab == .pharmacies ? "cross.fill" : "cross")
                            .resizable()
                            .scaledToFit()
                            .scaleEffect(selectedTab == .pharmacies ? 1.10 : 1.0)
                            .frame(width: 22, height: 22)
                        Text("Pharmacies")
                            .modifier(TextViewTabStyle())
                            .font(selectedTab == .pharmacies ? .system(size: 15, weight: .bold) : .system(size: 10, weight: .thin))
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                    .padding(.top, 4)
                }
                
            }
            .tint(selectedTab == .pharmacies ?  Color(UIColor.tintColor) : Color(UIColor.systemGray))
            
            
            Button{
                // Handle Button Click
                selectedTab = .profile
            } label: {
                
                GeometryReader { geo in
                    VStack (alignment: .center, spacing: 2) {
                        Image(systemName: selectedTab == .profile ? "person.fill" : "person")
                            .resizable()
                            .scaledToFit()
                            .scaleEffect(selectedTab == .profile ? 1.10 : 1.0)
                            .frame(width: 22, height: 22)
                        Text("Profile")
                            .modifier(TextViewTabStyle())
                            .font(selectedTab == .profile ? .system(size: 15, weight: .bold) : .system(size: 10, weight: .thin))
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                    .padding(.top, 4)
                }
                
            }
            .tint(selectedTab == .profile ?  Color(UIColor.tintColor) : Color(UIColor.systemGray))
            
            
            
            
        }
            .frame(height: 70)
            .background(Color(UIColor.tertiarySystemBackground))
            .cornerRadius(15)
            .padding(.horizontal, 15)
            .shadow(color: Color(UIColor.systemGray2), radius: 5, y: 2)
            
    }
    
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant(.pharmacies)).preferredColorScheme(.light)
    }
}
