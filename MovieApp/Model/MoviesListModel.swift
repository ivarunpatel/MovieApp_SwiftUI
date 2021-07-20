//
//  MoviesListModel.swift
//  MovieApp
//
//  Created by Varun on 15/07/21.
//

import Foundation
import SwiftUI
struct MoviesListModel: Identifiable {
    let id = UUID()
    let title: String
    let potraitPosterImage: String
    let rating: Float
}

extension MoviesListModel {
    static var dummyData: [MoviesListModel] {
        return [
            MoviesListModel(title: "Avengers: Endgame", potraitPosterImage: "avengers_endgame-_potrait", rating: 8.5),
            MoviesListModel(title: "Joker", potraitPosterImage: "joker_potrait", rating: 7.8),
            MoviesListModel(title: "Wonder Women", potraitPosterImage: "wonder_women_potrait", rating: 9.5),
            MoviesListModel(title: "Star Wars", potraitPosterImage: "star_wars_potrait", rating: 7.2),
            MoviesListModel(title: "Sucide Squad", potraitPosterImage: "suicide_squad_potrait", rating: 6.5)
        ]
    }
}
