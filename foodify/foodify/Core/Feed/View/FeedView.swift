//
//  FeedView.swift
//  foodify
//
//  Created by Bora Balos on 28/06/2024.
//

import SwiftUI

struct FeedView: View {
    @State var showSidebar: Bool = false
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        let sidebarWidth = getRect().width - 90
        
        NavigationStack {
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(0 ... 10, id: \.self) { recipe in
                        Text("A recipe here")
                    }
                }
            }
        }
        NavigationView {
            HStack(spacing: 0) {
                FoodifySidebarView(showSidebar: $showSidebar)
                
                VStack {
                    Text("Feed View")
                }
                .frame(width: getRect().width)
                
            }
            .frame(width: getRect().width + sidebarWidth)
            .offset(x: -sidebarWidth / 2)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    FeedView()
}
