//
//  FoodifySidebarView.swift
//  foodify
//
//  Created by Bora Balos on 28/06/2024.
//

import SwiftUI

struct FoodifySidebarView: View {
    @Binding var showSidebar: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(alignment: .center, spacing: 12) {
                Image("home-bg")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 56, height: 56)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading, spacing: 6) {
                    Text("John Doe")
                        .font(.title2.bold())
                    
                    Text("@johndoe")
                        .font(.callout)
                }
            }
            .padding(.all)
            .padding(.leading)
            
            HStack(spacing: 12) {
                Button {
                    
                } label: {
                    Label {
                        Text("Followers")
                    } icon: {
                        Text("107")
                            .fontWeight(.semibold)
                    }
                }
                
                Button {
                    
                } label: {
                    Label {
                        Text("Following")
                    } icon: {
                        Text("392")
                            .fontWeight(.semibold)
                    }
                }
            }
            .padding(.all)
            .padding(.leading)
            .foregroundColor(.black)
        }
        .padding(.vertical)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        .frame(width: getRect().width - 90)
        .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(
            Color.black
                .opacity(0.05)
                .ignoresSafeArea(.container, edges: .vertical)
        )
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    FeedView()
}

extension View {
    func getRect() -> CGRect{
        return UIScreen.main.bounds
    }
}
