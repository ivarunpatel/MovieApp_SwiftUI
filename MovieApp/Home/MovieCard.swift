//
//  MovieCard.swift
//  MovieApp
//
//  Created by Varun on 15/07/21.
//

import SwiftUI

struct MovieCard: View {
    
    typealias MovieSelectionHandler = (_ movie: MoviesListModel) -> Void
    let movie: MoviesListModel
    let didSelectMovie: MovieSelectionHandler
    
    init(movie: MoviesListModel, movieSelectionCallBack: @escaping MovieSelectionHandler) {
        self.movie = movie
        self.didSelectMovie = movieSelectionCallBack
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Image(movie.potraitPosterImage)
                .resizable()
                .cornerRadius(50)
                .shadow(color: .black.opacity(0.35), radius: 4, x: 0, y: 4)
            
            VStack(spacing: 0) {
                Text(movie.title)
                    .font(Font.Nunito.bold(size: 24))
                HStack(spacing: 10) {
                    Image.starFill
                        .foregroundColor(Color.starYellow)
                    Text("\(movie.rating, specifier: "%.1f")")
                        .font(Font.Nunito.regular(size: 14))
                }
            }
            .foregroundColor(.nevyBlue)
            .padding(.vertical, 20)
        }
        .onTapGesture {
            didSelectMovie(movie)
        }
    }
}

struct MovieCard_Previews: PreviewProvider {
    static var previews: some View {
        MovieCard(movie: MoviesListModel.dummyData.first!, movieSelectionCallBack: { _ in })
    }
}
