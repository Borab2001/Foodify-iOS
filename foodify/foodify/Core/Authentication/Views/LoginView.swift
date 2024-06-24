//
//  LoginView.swift
//  foodify
//
//  Created by Bora Balos on 23/06/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("home-bg") //
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.8), Color.black.opacity(0.6), Color.black.opacity(0.25), Color.clear]), startPoint: .bottom, endPoint: .top)
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    
                    Image("foodify-app-icon-white")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                        .padding()
                    VStack {
                        TextField("Enter your email", text: $email)
                        
                        SecureField("Enter your password", text: $password)
                    }
                    
                    NavigationLink {
                        Text("Forgot password")
                    } label: {
                        Text("Forgot Password?")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .padding(.top)
                            .padding(.trailing, 28)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Login")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .frame(width: 352, height: 44)
                            .background(.white)
                            .cornerRadius(8)
                    }
                    
                    Spacer()
                    
                    Divider()
                    
                    NavigationLink {
                        Text("Registration View")
                    } label: {
                        HStack(spacing: 3) {
                            Text("Don't have an account?")
                            
                            Text("Sign Up")
                                .fontWeight(.semibold)
                        }
                        .font(.footnote)
                        .foregroundColor(.white)
                        .padding()
                    }
                    .padding(.vertical, 16)
                }
                .padding(.top) // Ensure content does not overlap with safe area
                .padding([.leading, .trailing]) // Ensure content does not overlap with safe area
                .padding(.bottom)
            }
        }
    }
}

#Preview {
    LoginView()
}
