//
//  RegistrationView.swift
//  ThreadsClone
//
//  Created by Abhishek Dilip Dhok on 30/09/23.
//

import SwiftUI

struct RegistrationView: View {

    @State private var email = ""
    @State private var password = ""
    @State private var fullName = ""
    @State private var username = ""
    @Environment(\.dismiss) var dismiss

    var body: some View {
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
                    .autocorrectionDisabled()
                    .modifier(ThreadsTextFieldModifier())

                SecureField("Enter your password", text: $password)
                    .modifier(ThreadsTextFieldModifier())

                TextField("Enter your Full name", text: $fullName)
                    .modifier(ThreadsTextFieldModifier())

                TextField("Enter your username", text: $username)
                    .modifier(ThreadsTextFieldModifier())
            }

            // Signup Button
            Button {
                print("Signup clicked")
            } label: {
                Text("Sign up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 352, height: 44)
                    .foregroundStyle(Color.white)
                    .background(Color.black)
                    .cornerRadius(8)
            }
            .padding(.vertical)

            Spacer()

            Divider()

            // Button
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")

                    Text("Sign in")
                        .fontWeight(.semibold)
                }
                .foregroundStyle(Color.black)
                .font(.footnote)
            }
            .padding(.vertical, 16)

        }
    }
}

#Preview {
    RegistrationView()
}
