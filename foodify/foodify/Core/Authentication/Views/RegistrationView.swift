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
                    .foodifyTextField(placeholder: "Enter your email", showPlaceholder: email.isEmpty)
                
                SecureField("", text: $password)
                    .foodifyTextField(placeholder: "Enter your password", showPlaceholder: password.isEmpty)
                
                TextField("", text: $fullname)
                    .foodifyTextField(placeholder: "Enter your full name", showPlaceholder: fullname.isEmpty)
                
                TextField("", text: $username)
                    .foodifyTextField(placeholder: "Enter your username", showPlaceholder: username.isEmpty)
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
