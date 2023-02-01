//
//  SearchBar.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 18/01/2023.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String

    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color(UIColor.systemBlue))
                .padding(.trailing)
            TextField("Search a doctor or health issue", text: $text)
                .font(.system(size: 15, weight: .regular, design: .default))
                
        }
        .frame(height: 15)
        .padding()
        .background(Color(UIColor.tertiarySystemBackground))
        .cornerRadius(25)
        .shadow(color: Color(UIColor.systemGray2), radius: 3, y: 1)
        
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant("asd"))
    }
}
