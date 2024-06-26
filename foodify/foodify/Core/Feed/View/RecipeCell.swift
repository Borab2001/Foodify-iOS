//
//  RecipeCell.swift
//  foodify
//
//  Created by Bora Balos on 29/06/2024.
//

import SwiftUI

struct RecipeCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                Image("home-bg")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview {
    RecipeCell()
}
