//
//  ProfileView.swift
//  ThreadsClone
//
//  Created by Abhishek Dilip Dhok on 30/09/23.
//

import SwiftUI

struct ProfileView: View {

    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace private var animation

    private var filterBarWidth: CGFloat {
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 16
    }

    var body: some View {
        ScrollView(showsIndicators: false) {
            // bio and stats
            VStack(spacing: 20) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 12) {

                        // full name and user name
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Abhishek Dhok")
                                .font(.title2)
                                .fontWeight(.semibold)

                            Text("abhishek143-tech")
                                .font(.subheadline)
                        }

                        Text("Miracles do happen")
                            .font(.footnote)

                        Text("2 followers")
                            .font(.caption)
                            .foregroundStyle(Color(.gray))
                    }

                    Spacer()

                    CircularProfileImageView()
                }

                Button {

                } label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.white))
                        .frame(width: 352, height: 32)
                        .background(Color(.black))
                        .cornerRadius(8)
                }

                // user content list view

                VStack {
                    HStack {
                        ForEach(ProfileThreadFilter.allCases) { filter in
                            VStack {
                                Text(filter.title)
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == filter ? .semibold : .regular)

                                if selectedFilter == filter {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: filterBarWidth, height: 1)
                                        .matchedGeometryEffect(id: "item", in: animation)
                                } else {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: filterBarWidth, height: 1)
                                }
                            }
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    selectedFilter = filter
                                }
                            }
                        }
                    }
                    LazyVStack {
                        ForEach(0 ... 9, id:\.self) { thread in
                            ThreadCell()
                        }
                    }
                }
                .padding(.vertical, 8)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    ProfileView()
}
