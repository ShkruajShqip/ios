//
//  TopicItem.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 7/25/24.
//

import SwiftUI

struct TopicItem: View {
    let topicTitle: String
    let entryCount: String
    var body: some View {
        HStack(spacing: 30) {
            Text(topicTitle)
                .font(.headline)
                .fontWeight(.semibold)
            Spacer()
            Text(entryCount)
        }
    }
}

#Preview {
    TopicItem(topicTitle: "Test", entryCount: "25")
}
