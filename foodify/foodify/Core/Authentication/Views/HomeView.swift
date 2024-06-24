//
//  HomeView.swift
//  foodify
//
//  Created by Bora Balos on 24/06/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("home-bg") //
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.9), Color.black.opacity(0.75), Color.black.opacity(0.3), Color.clear]), startPoint: .bottom, endPoint: .top)
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    
                    Image("foodify-app-icon-white")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                        .padding()
                    
                    VStack(spacing: 4) {
                        Text("Multiple Uses")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        
                        Text("One App")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }
                    
                    VStack(spacing: 4) {
                        Button {
                            
                        } label: {
                            Text("Sign Up")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                                .frame(width: 352, height: 44)
                                .background(.white)
                                .cornerRadius(50)
                                .padding(.top, 36)
                        }
                        
                        Button {
                        
                        } label: {
                            Text("Login")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .frame(width: 352, height: 44)
                                .background(Color.black.opacity(0))
                                .padding()
                        }
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
