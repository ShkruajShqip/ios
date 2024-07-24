//
//  AppBarButton.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 7/25/24.
//

import SwiftUI

struct AppBarButton: View {
    let title: String
    let tabNumber: AppBarItem
    @Binding var selectedTab: AppBarItem
    var body: some View {
        Button(action: {selectedTab = tabNumber}, label: {
            Text(title)
                .font(.headline)
                .foregroundStyle(.black)
                .padding(.bottom, 4)
                .overlay(
                    selectedTab == tabNumber ? AnyView(                       
                        Rectangle()
                        .frame(height: 4)
                        .foregroundStyle(.green)
                        .offset(y: 7)): AnyView(EmptyView()),
                    alignment: .bottom
                )
        })
    }
}
