//
//  HomeHorizontalMenu.swift
//  MovieApp
//
//  Created by Varun on 07/07/21.
//

import Foundation

struct HomeHorizontalMenu: Identifiable {
    let id = UUID()
    let title: String
}

extension HomeHorizontalMenu {
    static var dummyData: [HomeHorizontalMenu] {
        return [
            HomeHorizontalMenu(title: "In Theater"),
            HomeHorizontalMenu(title: "Box Office"),
            HomeHorizontalMenu(title: "Coming Soon")
        ]
    }
}
