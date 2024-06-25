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
    @State private var fullname = ""
    @State private var username = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("foodify-app-icon-white")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack {
                TextField("", text: $email)
                    .foregroundColor(.white)
                    .placeholder("Enter your email", show: email.isEmpty, color: .primaryGray)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color.secondaryBlack)
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                SecureField("", text: $password)
                    .foregroundColor(.white)
                    .placeholder("Enter your password", show: password.isEmpty, color: .primaryGray)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color.secondaryBlack)
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                TextField("", text: $fullname)
                    .foregroundColor(.white)
                    .placeholder("Enter your full name", show: fullname.isEmpty, color: .primaryGray)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color.secondaryBlack)
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                TextField("", text: $username)
                    .foregroundColor(.white)
                    .placeholder("Enter your username", show: username.isEmpty, color: .primaryGray)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color.secondaryBlack)
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
            }
            
            Button {
                
            } label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .frame(width: 352, height: 44)
                    .background(.white)
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")
                    
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
                .foregroundColor(.white)
            }
            .padding(.vertical, 16)
            
        }
        .background(.black)
    }
}

#Preview {
    RegistrationView()
}
