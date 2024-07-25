//
//  HomeView.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 7/24/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack() {
          AppBar()
            ZStack(alignment: .leading) {
                Color.white
                    .ignoresSafeArea(.all)
                List {
                    TopicItem(topicTitle: "albin kurti", entryCount: "25")
                    TopicItem(topicTitle: "darsmat e arbreshit", entryCount: "523")
                    TopicItem(topicTitle: "fati tara", entryCount: "1204")
                    TopicItem(topicTitle: "mitrovica", entryCount: "2")
                    TopicItem(topicTitle: "kosova", entryCount: "90")
                    TopicItem(topicTitle: "euro 2024", entryCount: "999")
                    TopicItem(topicTitle: "mbappe", entryCount: "562")
                }
                .scrollContentBackground(.hidden)
            }
        }
    }
}

#Preview {
    HomeView()
}
