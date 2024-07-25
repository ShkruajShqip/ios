//
//  TopBarButton.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 7/24/24.
//

import SwiftUI

enum AppBarItem {
    case today
    case latest
    case favourites
}

struct AppBar: View {
    @State private var tab: AppBarItem = .today
    var body: some View {
        HStack {
            AppBarButton(title: "today", tabNumber: .today, selectedTab: $tab)
            AppBarButton(title: "favourites", tabNumber: .latest, selectedTab: $tab)
            AppBarButton(title: "latest", tabNumber: .favourites, selectedTab: $tab)
        }
    }
}

#Preview {
    AppBar()
}
