//
//  ContentView.swift
//  FirstBreak
//
//  Created by Ohara Yoji on 2025/03/22.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        NavigationStack {
            UserListView()
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
