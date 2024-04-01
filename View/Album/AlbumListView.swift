//
//  AlbumListView.swift
//  iTunesApp
//
//  Created by Deimante Valunaite on 29/01/2024.
//

import SwiftUI

struct AlbumListView: View {
    @ObservedObject var viewModel: AlbumListViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.albums) { album in
                NavigationLink {
                    AlbumDetailView(album: album)
                } label: {
                    AlbumRowView(album: album)
                }
            }
            ListPlaceholderRowView(state: viewModel.state, loadMore: viewModel.loadMore)
        }
        .listStyle(.plain)
    }
}

#Preview {
    NavigationView {
        AlbumListView(viewModel: AlbumListViewModel.example())
    }
}
