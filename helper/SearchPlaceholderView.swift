//
//  SearchPlaceholderView.swift
//  iTunesApp
//
//  Created by Deimante Valunaite on 31/01/2024.
//

import SwiftUI

struct SearchPlaceholderView: View {
    
    @Binding var searchTerm: String
    let suggestions = ["Miley Cyrus", "Taylor Swift", "maneskin"]
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Trending")
                .font(.title)
            ForEach(suggestions, id: \.self) { text in
                Button {
                    searchTerm = text
                } label: {
                    Text(text)
                        .font(.title2)
                }
            }
        }
    }
}

#Preview {
    SearchPlaceholderView(searchTerm: .constant("John"))
}
