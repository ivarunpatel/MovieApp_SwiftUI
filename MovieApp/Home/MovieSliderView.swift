//
//  MovieSliderView.swift
//  MovieApp
//
//  Created by Varun on 15/07/21.
//

import SwiftUI

struct MovieSliderView: View {
    
    typealias MovieSelectionHandler = (_ movie: MoviesListModel) -> Void
    let didSelectMovie: MovieSelectionHandler
    
    init(movieSelectionCallBack: @escaping MovieSelectionHandler) {
        self.didSelectMovie = movieSelectionCallBack
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(0..<MoviesListModel.dummyData.count) { index in
                    VStack(alignment: .center, spacing: 20) {
                        GeometryReader { geometry in
                            MovieCard(movie: MoviesListModel.dummyData[index], movieSelectionCallBack: { movie in
                                didSelectMovie(movie)
                            })
                                .rotation3DEffect(Angle(degrees: (Double(geometry.frame(in: .global).minX) - 30) / (index == MoviesListModel.dummyData.count - 1 ? -80 : -20)), axis: (x: 0, y: 1.0, z: 0))
                        }
                        .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.6, alignment: .center)
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(20)
    }
}

struct MovieSliderView_Previews: PreviewProvider {
    static var previews: some View {
        MovieSliderView(movieSelectionCallBack: {_ in })
    }
}
