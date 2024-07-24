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
        HStack {
            Text(topicTitle)
                .font(.title2)
                .fontWeight(.semibold)
            Spacer()
            Text(entryCount)
        }
    }
}

#Preview {
    TopicItem(topicTitle: "ShkruajShqip po zhvillohet", entryCount: "25")
}
