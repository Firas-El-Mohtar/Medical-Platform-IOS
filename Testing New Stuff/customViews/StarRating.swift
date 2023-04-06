//
//  StarRating.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 06/04/2023.
//

import SwiftUI

struct StarRating: View {
    let rating: Double
       
       var body: some View {
           HStack(spacing: 4) {
               ForEach(0..<5) { index in
                   let starState: StarState = self.starState(forIndex: index)
                   Image(systemName: starState.rawValue)
                       .foregroundColor(Color.yellow)
               }
           }
       }
       
       private func starState(forIndex index: Int) -> StarState {
           let ratingRemainder = rating - Double(index)
           if ratingRemainder >= 1.0 {
               return .full
           } else if ratingRemainder > 0 {
               return .half
           } else {
               return .empty
           }
       }
}

enum StarState: String {
    case empty = "star"
    case half = "star.lefthalf.fill"
    case full = "star.fill"
}

struct StarRating_Previews: PreviewProvider {
    static var previews: some View {
        StarRating(rating: 4.5)
    }
}
