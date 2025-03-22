//
//  UserListViewModel.swift
//  Practice
//
//  Created by Ohara Yoji on 2025/03/22.
//

import SwiftUI

@Observable
class UserListViewModel {
    var users: [UserModel] = []
    
    func onAppear() {
        getUsers()
    }
    
    private func getUsers() {
        users.append(.init(nickname: "Itsuki", skills: ["Swift", "Japanese"], hobbies: ["Baseball"], nationality: "🇯🇵"))
        users.append(.init(nickname: "Seinosuke", skills: ["Vision Pro", "Japanese"], hobbies: ["Baseball"], nationality: "🇯🇵"))
        users.append(.init(nickname: "Emma", skills: ["English", "SQL"], hobbies: [""], nationality: "🇹🇼"))
        users.append(.init(nickname: "Yoji", skills: ["Swift", "Japanese"], hobbies: ["Skateboard"], nationality: "🇯🇵"))
    }
}
