//
//  ThreadCreationView.swift
//  ThreadsClone
//
//  Created by Abhishek Dilip Dhok on 30/09/23.
//

import SwiftUI

struct ThreadCreationView: View {

    @State private var caption = ""
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    CircularProfileImageView()

                    VStack(alignment: .leading) {
                        Text("abhishek143-tech")
                            .fontWeight(.semibold)

                        TextField("Start a thread...", text: $caption, axis: .vertical)
                    }
                    .font(.footnote)

                    Spacer()

                    if !caption.isEmpty {
                        Button {

                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundStyle(.gray)
                        }
                    }
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                    .font(.subheadline)
                    .foregroundColor(Color(.black))
                }

                ToolbarItem(placement: .topBarTrailing) {
                    Button("Post") {

                    }
                    .opacity(caption.isEmpty ? 0.5 : 1.0)
                    .disabled(caption.isEmpty)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(.black))
                }
            }
        }
    }
}

#Preview {
    ThreadCreationView()
}
