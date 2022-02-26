//
//  User.swift
//  MVVM+Coordinator
//
//  Created by VA on 26/02/22.
//

import Foundation

struct User: Hashable {
    let id: UUID = UUID()
    let name: String
    
    static func mock() -> [User] {
        [
            User(name: "A"),
            User(name: "B"),
            User(name: "C"),
            User(name: "D"),
            User(name: "E")
        ]
    }
}
