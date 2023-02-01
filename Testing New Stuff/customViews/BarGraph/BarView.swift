//
//  BarView.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 25/01/2023.
//

import SwiftUI

struct BarView: View {
    
    @ObservedObject var viewModel: BarGraphViewModel
    var body: some View {
        VStack(spacing: 0) {
            ForEach(viewModel.start..<viewModel.end - 1, id: \.self) { index in
                ForEach(1..<5, id: \.self) { i in
                    Rectangle()
                        .frame(width: 15, height: viewModel.calculateBarHeight())
                        .foregroundColor(viewModel.getColor(i))
                }
            }
        }
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView(viewModel: BarGraphViewModel())
    }
}
