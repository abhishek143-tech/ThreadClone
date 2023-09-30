//
//  FeedView.swift
//  ThreadsClone
//
//  Created by Abhishek Dilip Dhok on 30/09/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(0 ... 9, id: \.self) { _ in
                        ThreadCell()
                    }
                }
            }
            .refreshable {
                print("Refresh Threads")
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {

                } label: {
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundStyle(Color.black)
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        FeedView()
    }
}
