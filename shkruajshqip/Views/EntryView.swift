//
//  EntryView.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 8/1/24.
//

import SwiftUI

struct EntryView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("albin kurti")
                .font(.title)
                .fontWeight(.semibold)
            EntryItemView()
            EntryItemView()
            EntryItemView()
            EntryItemView()
            
        }
    }
}

#Preview {
    EntryView()
}
