//
//  LoginView.swift
//  ThreadsClone
//
//  Created by Abhishek Dilip Dhok on 30/09/23.
//

import SwiftUI

struct LoginView: View {

    @State private var email = ""
    @State private var password = ""

    var body: some View {
        NavigationStack {
            VStack {
                Spacer()

                // Logo
                Image("threads-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding(.bottom)

                // Email and Password field
                VStack {
                    TextField("Enter your email", text: $email)
                        .autocapitalization(.none)
                        .modifier(ThreadsTextFieldModifier())

                    SecureField("Enter your password", text: $password)
                        .modifier(ThreadsTextFieldModifier())
                }

                // Forgot password
                NavigationLink {
                    // TODO - Add logic here
                    Text("Forgot password")
                } label: {
                    Text("Forgot password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 20)
                        .foregroundStyle(Color.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }

                // Login Button
                Button {
                    print("Login clicked")
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 352, height: 44)
                        .foregroundStyle(Color.white)
                        .background(Color.black)
                        .cornerRadius(8)
                }

                Spacer()

                Divider()

                // Sign up Navigation
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")

                        Text("Sign UP")
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(Color.black)
                    .font(.footnote)
                }
                .padding(.vertical)

            }
        }
    }
}

#Preview {
    LoginView()
}
