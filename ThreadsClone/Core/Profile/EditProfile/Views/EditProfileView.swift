//
//  EditProfileView.swift
//  ThreadsClone
//
//  Created by Abhishek Dilip Dhok on 01/10/23.
//

import SwiftUI

struct EditProfileView: View {

    @State private var bio = ""
    @State private var link = ""
    @State private var isPrivateProfile = false

    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground)
                    .edgesIgnoringSafeArea([.bottom, .horizontal])

                VStack {
                    // Name and Profile Image
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Name")
                                .fontWeight(.semibold)

                            Text("Abhishek Dhok")
                        }

                        Spacer()

                        CircularProfileImageView()
                    }

                    Divider()

                    // bio field
                    VStack(alignment: .leading) {
                        Text("Bio")
                            .fontWeight(.semibold)

                        TextField("Enter your bio..", text: $bio, axis: .vertical)
                    }

                    Divider()

                    // Link
                    VStack(alignment: .leading) {
                        Text("Link")
                            .fontWeight(.semibold)

                        TextField("Add Link..", text: $link)
                    }

                    Divider()

                    // Profile Private or not

                    Toggle("Private Profile", isOn: $isPrivateProfile)

                    Divider()

                }
                .font(.footnote)
                .padding()
                .background(.white)
                .cornerRadius(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
                .padding()
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {

                    }
                    .font(.subheadline)
                    .foregroundColor(Color(.black))
                }

                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") {

                    }
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(Color(.black))
                }
            }
        }
    }
}

#Preview {
    EditProfileView()
}
