//
//  EntryItemView.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 8/1/24.
//

import SwiftUI

struct EntryItemView: View {
    var body: some View {
        GroupBox("ardijorganxhi") {
            VStack(alignment: .leading, spacing: 15) {
                Text("un mendoj qe darsmat e arbreshit jan perfe")
                HStack(spacing: 7) {
                    Image(systemName: "arrow.up")
                    Text("50")
                    Image(systemName: "arrow.down")
                    Text("2")
                }
            }
        }
        .padding()
    }
}

#Preview {
    EntryItemView()
}
