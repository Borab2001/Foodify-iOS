//
//  PlaceholderModifier.swift
//  foodify
//
//  Created by Bora Balos on 25/06/2024.
//

import SwiftUI

struct PlaceholderModifier: ViewModifier {
    var placeholder: String
    var showPlaceholder: Bool
    var placeholderColor: Color
    
    func body(content: Content) -> some View {
        ZStack(alignment: .leading) {
            if showPlaceholder {
                Text(placeholder)
                    .foregroundColor(placeholderColor)
                    .padding(.horizontal, 12)
            }
            content
                .foregroundColor(.primary)
                .padding(.horizontal, 12)
        }
    }
}

extension View {
    func placeholder(_ placeholder: String, show: Bool, color: Color) -> some View {
        self.modifier(PlaceholderModifier(placeholder: placeholder, showPlaceholder: show, placeholderColor: color))
    }
}
