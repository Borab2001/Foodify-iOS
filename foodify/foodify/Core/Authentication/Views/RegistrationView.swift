//
//  RegistrationView.swift
//  foodify
//
//  Created by Bora Balos on 25/06/2024.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("foodify-app-icon-white")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack {
                TextField("Enter your email", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color.secondaryBlack)
                    .foregroundColor(.primaryGray)
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                SecureField("Enter your password", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color.secondaryBlack)
                    .foregroundColor(.primaryGray)
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                TextField("Enter your full name", text: $fullname)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color.secondaryBlack)
                    .foregroundColor(.primaryGray)
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                TextField("Enter your username", text: $username)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color.secondaryBlack)
                    .foregroundColor(.primaryGray)
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
            }
        }
        .background(.black)
    }
}

#Preview {
    RegistrationView()
}
