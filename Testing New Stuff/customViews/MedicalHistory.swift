//
//  MedicalHistory.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 13/04/2023.
//

import SwiftUI

struct MedicalHistory: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Chronic Diseases")
                .modifier(TextSubTitleStyle())
            Text("Nothing")
            Text("Nothing")
            Text("Allergies")
                .modifier(TextSubTitleStyle())
            Text("Nothing")
            Text("Nothing")
            Text("Medication")
                .modifier(TextSubTitleStyle())
            Text("Nothing")
            Text("Nothing")
            Text("Nothing")
        }
    }
}

struct MedicalHistory_Previews: PreviewProvider {
    static var previews: some View {
        MedicalHistory()
    }
}
