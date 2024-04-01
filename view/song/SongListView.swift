//
//  SongListView.swift
//  iTunesApp
//
//  Created by Deimante Valunaite on 31/01/2024.
//

import SwiftUI

struct SongListView: View {
    @ObservedObject var viewModel: SongListViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.songs) { song in
                NavigationLink {
                    SongDetailView(song: song)
                } label: {
                    SongRowView(song: song)
                }
            }
            ListPlaceholderRowView(state: viewModel.state, loadMore: viewModel.loadMore)
        }
        .listStyle(.plain)
    }
}

#Preview {
    SongListView(viewModel: SongListViewModel.example())
}
