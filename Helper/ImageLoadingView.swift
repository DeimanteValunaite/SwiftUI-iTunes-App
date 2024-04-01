//
//  ImageLoadingView.swift
//  iTunesApp
//
//  Created by Deimante Valunaite on 31/01/2024.
//

import SwiftUI

struct ImageLoadingView: View {
    let urlString: String
    let size: CGFloat
    
    var body: some View {
        AsyncImage(url: URL(string: urlString)) { phase in
            switch phase {
                case .empty:
                    ProgressView()
                        .frame(width: size)
                case .failure(_):
                    Color.gray
                        .frame(width: size)
                case .success(let image):
                    image
                        .border(Color(white: 0.8))
                @unknown default:
                    EmptyView()
            }
        }
        .frame(height: size)
    }
}

#Preview {
    ImageLoadingView(urlString: "", size: 100)
}
