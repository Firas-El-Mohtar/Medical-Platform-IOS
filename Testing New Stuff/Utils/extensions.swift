//
//  extensions.swift
//  Medical-Platform
//
//  Created by Firas El Mohtar on 07/01/2023.
//

import Foundation
import SwiftUI


struct BackgroundStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Constants.backgroundColor)
        
    }
}

struct TextTitleStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 32, weight: .black, design: .default))
            .fixedSize(horizontal: false, vertical: true)
    }
}

struct TextSubTitleStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 27, weight: .bold, design: .default))
            .fixedSize(horizontal: false, vertical: true)
    }
}

struct TextDescriptionStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 17, weight: .regular, design: .default))
    }
}

struct ButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 21, weight: .black, design: .default))
    }
}


struct EditTextStyle : ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(16)
            .background(Constants.editTextBackground)
            .cornerRadius(6.0)
            .shadow(radius: 4.0)
        
    }
}


struct ButtonFullScreenStyle : ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 320, height: 20, alignment: .center)
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .cornerRadius(10)
    }
}

struct TextViewTabStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 10, weight: .regular, design: .default))
            .padding(.top, 5)
            .padding(.bottom, 5)
    }
}


struct DateTitleStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 17, weight: .black, design: .default))
            .fixedSize(horizontal: false, vertical: true)
    }
}

struct DoctorNameStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.system(size: 12, weight: .regular, design: .default))
    }
}


struct TextViewChip: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 12, weight: .regular, design: .default))
            .padding(.top, 5)
            .padding(.bottom, 5)
    }
}

struct TimeBarGraphStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 12, weight: .regular, design: .default))
            .frame(height: 15)
    }
}

struct DayBarGraphStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 13, weight: .regular, design: .default))
            .frame(height: 15)
    }
}

