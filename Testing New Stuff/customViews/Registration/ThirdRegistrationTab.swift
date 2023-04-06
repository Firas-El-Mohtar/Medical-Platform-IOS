//
//  ThirdRegistrationTab.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 13/03/2023.
//

import SwiftUI

struct ThirdRegistrationTab: View {
    
    @ObservedObject var viewModel: AuthenticationViewModel

    var body: some View {
        ScrollView{
            VStack {
                Button("Add Allergy") {
                    viewModel.allergyText.append(viewModel.newAllergy)
                    viewModel.newAllergy = ""
                    viewModel.allergyIndex += 1
                }.modifier(ButtonFullScreenStyle())

                ForEach(viewModel.allergyText.indices, id: \.self) { index in
                    let allergy = viewModel.allergyText[index]
                    HStack{
                        TextField("New Allergy", text: $viewModel.allergyText[index])
                            .modifier(EditTextStyle())
                        Image(systemName: "xmark.circle")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .padding(.trailing, 2)
                            .frame(width: 20, height: 20)
                            .onTapGesture {
                                if let index = viewModel.allergyText.firstIndex(of: allergy) {
                                    viewModel.allergyText.remove(at: index)
                                }
                                viewModel.allergyIndex -= 1
                            }
                    }
                }

                
                Button("Add Chronic Disease") {
                    viewModel.chronicDiseaseText.append(viewModel.newChronicDisease)
                    viewModel.newChronicDisease = ""
                    viewModel.chronicDiseaseIndex += 1
                }  .modifier(ButtonFullScreenStyle())

                ForEach(viewModel.chronicDiseaseText.indices, id: \.self) { index in
                    let disease = viewModel.chronicDiseaseText[index]
                    HStack{
                        TextField("New Disease", text: $viewModel.chronicDiseaseText[index])
                            .modifier(EditTextStyle())
                        Image(systemName: "xmark.circle")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .padding(.trailing, 2)
                            .frame(width: 20, height: 20)
                            .onTapGesture {
                                if let index = viewModel.chronicDiseaseText.firstIndex(of: disease) {
                                    viewModel.chronicDiseaseText.remove(at: index)
                                }
                                viewModel.chronicDiseaseIndex -= 1
                            }
                    }
                }
                
                Button("Add Medication") {
                    viewModel.medicationText.append(viewModel.newMedication)
                    viewModel.newMedication = ""
                    viewModel.newMedicationIndex += 1
                }
                .modifier(ButtonFullScreenStyle())


                ForEach(viewModel.medicationText.indices, id: \.self) { index in
                    let medication = viewModel.medicationText[index]
                    HStack{
                        TextField("New Medication", text: $viewModel.medicationText[index])
                            .modifier(EditTextStyle())
                        Image(systemName: "xmark.circle")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .padding(.trailing, 2)
                            .frame(width: 20, height: 20)
                            .onTapGesture {
                                if let index = viewModel.medicationText.firstIndex(of: medication) {
                                    viewModel.medicationText.remove(at: index)
                                }
                                viewModel.newMedicationIndex -= 1
                            }
                    }
                }
                

            }
        }
    }
}



struct ThirdRegistrationTab_Previews: PreviewProvider {
    static var previews: some View {
        ThirdRegistrationTab(viewModel: AuthenticationViewModel())
    }
}
