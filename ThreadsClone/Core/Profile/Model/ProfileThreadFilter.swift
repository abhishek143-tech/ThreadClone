//
//  ProfileThreadFilter.swift
//  ThreadsClone
//
//  Created by Abhishek Dilip Dhok on 30/09/23.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
    case threads
    case replies

    var title: String {
        switch self {
        case .threads:
            return "Threads"

        case .replies:
            return "Replies"
        }
    }

    var id: Int {
        return self.rawValue
    }
}
