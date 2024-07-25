//
//  ContentView.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 7/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Label("Home", systemImage: "house") }
           SearchView()
                .tabItem { Label("Search", systemImage: "magnifyingglass") }
           ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
        }
        .accentColor(.green)
    }
}

#Preview {
    ContentView()
}
