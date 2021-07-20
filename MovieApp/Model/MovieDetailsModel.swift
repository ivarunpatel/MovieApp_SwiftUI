//
//  MovieDetailsModel.swift
//  MovieApp
//
//  Created by Varun on 19/07/21.
//

import Foundation

struct MovieDetailsModel: Identifiable {
    let id = UUID()
    let title: String
    let landscapePosterImage: String
    let imdbRating: MovieRatingDetails
    let yourRating: Float?
    let metaScore: MovieMetaScore
    let releaseYear: Int
    let parentalGuide: String
    let runningTime: String
    let categories: [MovieCatrgoriesModel]
    let summary: String
    let castAndCrew: [MovieCastCrewModel]
}

struct MovieRatingDetails {
    let averageRating: Float
    let outOf: Int
    let totalRating: Int
}

struct MovieMetaScore {
    var score: Int
    var criticRating: Int
}

struct MovieCastCrewModel: Identifiable {
    let id = UUID()
    let name: String
    let profilePicture: String
    let role: String
}

extension MovieDetailsModel {
    static var dummyData: MovieDetailsModel {
        return MovieDetailsModel(title: "Avengers: Endgame", landscapePosterImage: "avengers_endgame-_landscape", imdbRating: MovieRatingDetails(averageRating: 8.4, outOf: 10, totalRating: 9002000), yourRating: nil, metaScore: MovieMetaScore(score: 78, criticRating: 581), releaseYear: 2019, parentalGuide: "PG-13", runningTime: "3h 1min", categories: [
                                    MovieCatrgoriesModel(title: "Action"),
                                    MovieCatrgoriesModel(title: "Adventure"),
                                    MovieCatrgoriesModel(title: "Drama")
        ], summary: "After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos' actions and restore balance to the universe.", castAndCrew: [
                                    MovieCastCrewModel(name: "Robert Downey Jr.", profilePicture: "Robert_Downey_Jr.", role: "Tony Stark"),
                                    MovieCastCrewModel(name: "Chris Evans", profilePicture: "Chris_Evans", role: "Steve Rogers"),
                                    MovieCastCrewModel(name: "Mark Ruffalo", profilePicture: "Mark_Ruffalo", role: "Bruce Banner"),
                                    MovieCastCrewModel(name: "Chris Hemsworth", profilePicture: "Chris_Hemsworth", role: "Thor"),
                                    MovieCastCrewModel(name: "Scarlett Johansson", profilePicture: "Scarlett_Johansson", role: "Natasha Romanoff")
        ])
    }
}
