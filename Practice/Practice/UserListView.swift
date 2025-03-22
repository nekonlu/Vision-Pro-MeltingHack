//
//  UserListView.swift
//  Practice
//
//  Created by Ohara Yoji on 2025/03/22.
//

import SwiftUI

struct UserListView: View {
    
    @State private var viewModel: UserListViewModel = .init()
    
    var body: some View {
        VStack {
            ForEach(viewModel.users) { user in
                userRow(user: user)
            }
        }
        .onAppear {
            viewModel.onAppear()
        }
    }
    
    private func userRow(user: UserModel) -> some View {
        VStack(spacing: 8) {
            Text(user.nickname).font(.title).bold()
            
            VStack {
                HStack(spacing: 4) {
                    Text("Skills: ")
                    Text(user.skills.joined(separator: ", "))
                }
                
                HStack(spacing: 4) {
                    Text("Hobbies: ")
                    Text(user.hobbies.joined(separator: ", "))
                }
                
                HStack(spacing: 4) {
                    Text("Nationality: ")
                    Text(user.nationality)
                }
            }
            
        }
    }
}
