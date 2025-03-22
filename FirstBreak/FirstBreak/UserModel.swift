//
//  UserModel.swift
//  Practice
//
//  Created by Ohara Yoji on 2025/03/22.
//

import Foundation

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    
    let nickname: String
    let skills: [String]
    let hobbies: [String]
    let nationality: String
    
    init(nickname: String, skills: [String], hobbies: [String], nationality: String) {
        self.nickname = nickname
        self.skills = skills
        self.hobbies = hobbies
        self.nationality = nationality
    }
}
