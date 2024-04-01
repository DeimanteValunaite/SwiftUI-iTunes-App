//
//  EntityType.swift
//  iTunesApp
//
//  Created by Deimante Valunaite on 31/01/2024.
//

import Foundation

enum EntityType: String, Identifiable, CaseIterable {
    case all
    case album
    case song
    case movie
    
    var id: String {
        self.rawValue
    }
    
    func name() -> String {
        switch self {
            case .all:
                return "All"
            case .album:
                return "Albums"
            case .song:
                return "Songs"
            case .movie:
                return "Movies"
        }
    }
}
