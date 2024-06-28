//
//  FeedView.swift
//  foodify
//
//  Created by Bora Balos on 28/06/2024.
//

import SwiftUI

struct FeedView: View {
    @State var showSidebar: Bool = false
    
    var body: some View {
        Text("Feed View")
        
        NavigationView {
            HStack(spacing: 0) {
                FoodifySidebarView(showSidebar: $showSidebar)
            }
        }
    }
}

#Preview {
    FeedView()
}
