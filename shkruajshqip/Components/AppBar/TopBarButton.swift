//
//  TopBarButton.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 7/24/24.
//

import SwiftUI

struct AppBar: View {
    @State private var tab: Int = 1
    var body: some View {
        HStack {
            Button(action: {tab = 1}, label: {
                Text("today")
                    .font(.headline)
                    .foregroundStyle(.black)
                    .padding(.bottom, 4)
                    .overlay(
                        tab == 1 ? AnyView(                        Rectangle()
                            .frame(height: 5)
                            .foregroundStyle(.green)
                            .offset(y: 10)): AnyView(EmptyView()),
                        alignment: .bottom
                    )
            })
            Button(action: {tab = 2}, label: {
                Text("latest")
                    .font(.headline)
                    .foregroundStyle(.black)
                    .padding(.bottom, 4)
                    .overlay(
                        tab == 2 ? AnyView(                        Rectangle()
                            .frame(height: 5)
                            .foregroundStyle(.green)
                            .offset(y: 10)): AnyView(EmptyView()),
                        alignment: .bottom
                    )
            })
            Button(action: {tab = 3}, label: {
                Text("favourites")
                    .font(.headline)
                    .foregroundStyle(.black)
                    .padding(.bottom, 4)
                    .overlay(
                        tab == 3 ? AnyView(                        Rectangle()
                            .frame(height: 5)
                            .foregroundStyle(.green)
                            .offset(y: 10)): AnyView(EmptyView()),
                        alignment: .bottom
                    )
            })
        }
    }
}

#Preview {
    AppBar()
}
