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
        
        
        NavigationView {
            HStack(spacing: 0) {
                FoodifySidebarView(showSidebar: $showSidebar)
                
                Text("Feed View")
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    FeedView()
}
