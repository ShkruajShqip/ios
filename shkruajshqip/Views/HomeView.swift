//
//  HomeView.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 7/24/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        AppBar()
        List {
            TopicItem(topicTitle: "ShkruajShqip po zhvillohet", entryCount: "25")
            TopicItem(topicTitle: "ShkruajShqip po zhvillohet", entryCount: "25")
            TopicItem(topicTitle: "ShkruajShqip po zhvillohet", entryCount: "25")
            TopicItem(topicTitle: "ShkruajShqip po zhvillohet", entryCount: "25")
            TopicItem(topicTitle: "ShkruajShqip po zhvillohet", entryCount: "25")
        }
    }
}

#Preview {
    HomeView()
}
