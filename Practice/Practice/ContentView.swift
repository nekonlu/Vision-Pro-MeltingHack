//
//  ContentView.swift
//  Practice
//
//  Created by Ohara Yoji on 2025/03/22.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    @State private var enlarge: Bool = false
    
    var body: some View {
        VStack {
            UserListView()
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
