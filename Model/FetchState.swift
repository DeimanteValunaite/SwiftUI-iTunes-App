//
//  FetchState.swift
//  iTunesApp
//
//  Created by Deimante Valunaite on 30/01/2024.
//

import Foundation

enum FetchState: Comparable {
    case good
    case isLoading
    case loadedAll
    case noResults
    case error(String)
}
