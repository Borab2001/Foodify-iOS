//
//  FoodifyTextFieldModifier.swift
//  foodify
//
//  Created by Bora Balos on 26/06/2024.
//

import SwiftUI

struct FoodifyTextFieldModifier: ViewModifier {
    let placeholder: String
    let showPlaceholder: Bool

    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .placeholder(placeholder, show: showPlaceholder, color: .primaryGray)
            .font(.subheadline)
            .padding(12)
            .background(Color.secondaryBlack)
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}

extension View {
    func foodifyTextField(placeholder: String, showPlaceholder: Bool) -> some View {
        self.modifier(FoodifyTextFieldModifier(placeholder: placeholder, showPlaceholder: showPlaceholder))
    }
}
