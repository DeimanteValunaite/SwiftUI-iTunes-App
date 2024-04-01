//
//  ContentView.swift
//  iTunesApp
//
//  Created by Deimante Valunaite on 29/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            
            AlbumSearchView()
                .tabItem {
                    Label("Albums", systemImage: "music.note")
                }
            
            MovieSearchListView()
                .tabItem {
                    Label("Movies", systemImage: "tv")
                }
        }
    }
}

#Preview {
    ContentView()
}
