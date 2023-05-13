//
//  AddData.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 08/04/2023.
//

import SwiftUI

struct AddDataView: View {
    
    @State var newData: String = ""
    @Binding var data: [String]
    var title: String
    
    var body: some View {
        VStack {
            Button("Add \(title)") {
                data.append(newData)
                newData = ""
            }
            .modifier(ButtonFullScreenStyle())
            
            ForEach(data.indices, id: \.self) { index in
                let item = data[index]
                HStack {
                    TextField("New \(title)", text: $data[index])
                        .modifier(EditTextStyle())
                    Image(systemName: "xmark.circle")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .padding(.trailing, 2)
                        .frame(width: 20, height: 20)
                        .onTapGesture {
                            if let index = data.firstIndex(of: item) {
                                data.remove(at: index)
                            }
                        }
                }
            }
        }
    }
}

