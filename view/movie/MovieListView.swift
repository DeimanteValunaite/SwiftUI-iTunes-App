//
//  MovieListView.swift
//  iTunesApp
//
//  Created by Deimante Valunaite on 30/01/2024.
//

import SwiftUI

struct MovieListView: View {
    @ObservedObject var viewModel: MovieListViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.movies) { movie in
                MovieRowView(movie: movie)
            }
            ListPlaceholderRowView(state: viewModel.state, loadMore: viewModel.loadMore)
        }
        .listStyle(.plain)
    }
}

#Preview {
    MovieListView(viewModel: MovieListViewModel())
}
