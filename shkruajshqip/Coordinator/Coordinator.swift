//
//  Coordinator.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 8/1/24.
//

import Foundation
import SwiftUI


enum Page: String, Identifiable {
    case home, search, profile, entry, navTab
    
    var id: String {
        self.rawValue
    }
}

enum Sheet: String, Identifiable {
    case register, login
    
    var id: String {
        self.rawValue
    }
}

class Coordinator: ObservableObject {
    
    @Published var path = NavigationPath()
    @Published var sheet: Sheet?
    
    func push(_ page: Page) {
        path.append(page)
    }
    
    func present(sheet: Sheet) {
        self.sheet = sheet
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func dismissSheet() {
        self.sheet = nil
    }
    
    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
        case .home:
            HomeView()
        case .search:
            SearchView()
        case .profile:
            ProfileView()
        case .entry:
            EntryView()
        case .navTab:
            ContentView()
        }
    }
    
    @ViewBuilder
    func build(sheet: Sheet) -> some View {
        switch sheet {
        case .register:
            RegisterView()
        case .login:
            LoginView()
        }
    }
    
}
