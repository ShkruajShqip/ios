//
//  EntriesView.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 7/24/24.
//

import SwiftUI

struct SearchView: View {
    @State private var searchPrompt = ""
    var body: some View {
        NavigationStack {
            List {
                
            }
            .navigationTitle("Search")
            
        }
        .searchable(text: $searchPrompt)
    }
}

#Preview {
    SearchView()
}
