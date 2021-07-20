//
//  MovieCatrgoriesModel.swift
//  MovieApp
//
//  Created by Varun on 14/07/21.
//

import Foundation

struct MovieCatrgoriesModel: Identifiable {
    let id = UUID()
    let title: String
}

extension MovieCatrgoriesModel {
    static var dummyData: [MovieCatrgoriesModel] {
        return [
            MovieCatrgoriesModel(title: "Action"),
            MovieCatrgoriesModel(title: "Crime"),
            MovieCatrgoriesModel(title: "Comedy"),
            MovieCatrgoriesModel(title: "Drama"),
            MovieCatrgoriesModel(title: "Horror"),
            MovieCatrgoriesModel(title: "Romance"),
            MovieCatrgoriesModel(title: "Documentary"),
        ]
    }
}
