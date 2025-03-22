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
        ScrollView {
            VStack(alignment: .leading) {
                ForEach(viewModel.users) { user in
                    userRow(user: user)
                    Divider()
                }
            }
            .padding()
        }
        .onAppear {
            viewModel.onAppear()
        }
        .navigationTitle("Nearby people")
    }
    
    private func userRow(user: UserModel) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(user.nickname).font(.title).bold()
            
            VStack(alignment: .leading) {
                HStack(alignment: .top, spacing: 4) {
                    Text("Skills ")
                        .frame(width: 100, alignment: .leading)
                    Text(user.skills.joined(separator: ", "))
                }
                
                HStack(alignment: .top, spacing: 4) {
                    Text("Hobbies ").frame(width: 100, alignment: .leading)
                    Text(user.hobbies.joined(separator: ", "))
                }
                
                HStack(alignment: .top, spacing: 4) {
                    Text("Nationality ").frame(width: 100, alignment: .leading)
                    Text(user.nationality)
                }
            }
            
        }
    }
}
