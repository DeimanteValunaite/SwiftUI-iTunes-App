//
//  MovieSearchListView.swift
//  iTunesApp
//
//  Created by Deimante Valunaite on 30/01/2024.
//

import SwiftUI

struct MovieSearchListView: View {
    @StateObject private var viewModel = MovieListViewModel()
    
    var body: some View {
        NavigationView {
            Group {
                if viewModel.searchTerm.isEmpty {
                    SearchPlaceholderView(searchTerm: $viewModel.searchTerm)
                } else {
                    MovieListView(viewModel: viewModel)
                }
            }
            .searchable(text: $viewModel.searchTerm)
            .navigationTitle("Search Movies")
        }
    }
}

#Preview {
    MovieSearchListView()
}
