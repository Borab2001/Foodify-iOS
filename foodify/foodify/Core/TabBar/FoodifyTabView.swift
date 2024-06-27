//
//  FoodifyTabView.swift
//  foodify
//
//  Created by Bora Balos on 27/06/2024.
//

import SwiftUI

struct FoodifyTabView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Feed View")
                .tabItem { 
                    Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                        .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                }
        }
    }
}

#Preview {
    FoodifyTabView()
}
