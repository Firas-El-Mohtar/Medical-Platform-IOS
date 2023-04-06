//
//  TextFieldDynamicAdd.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 15/03/2023.
//
//
//import SwiftUI
//
//struct TextFieldDynamicAdd: View {
//    @State var listItemEntries: [ListItemEntry] = []
//    var title: String
//    var body: some View {
//        Form {
//            ForEach(listItemEntries.indices, id: \.self) { index in
//                _ = listItemEntries[index]
//                HStack{
//                    TextField("Add \(title)", text: $listItemEntries[index].textValue)
//                        .modifier(EditTextStyle())
//                    Image(systemName: "xmark.circle")
//                        .renderingMode(.original)
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                        .padding(.trailing, 2)
//                        .frame(width: 20, height: 20)
//                        .onTapGesture {
//                            self.listItemEntries.remove(at: index)
//                        }
//                }
//            }
//            Button("Add \(title)") {
//                listItemEntries.append(ListItemEntry(textValue: "\(title) \(listItemEntries.count + 1)", category: title))
//            }
//        }
//    }
//}
//
//
//struct ListItemEntry: Identifiable, Equatable {
//    let id = UUID()
//    var textValue: String
//    var category: String
//
//    static func == (lhs: ListItemEntry, rhs: ListItemEntry) -> Bool {
//        return lhs.id == rhs.id
//    }
//}
