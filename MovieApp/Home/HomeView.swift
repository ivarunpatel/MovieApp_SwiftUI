//
//  HomeView.swift
//  MovieApp
//
//  Created by Varun on 07/07/21.
//

import SwiftUI

struct HomeView: View {
    
    @State private var isShowingDetailsScreen: Bool?
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(
                    destination: MovieDetailsView(movieDetails: MovieDetailsModel.dummyData),
                    tag: true,
                    selection: $isShowingDetailsScreen,
                    label: {
                        EmptyView()
                    })
                HomeNavigationView()
                HomeHorizontalMenuView()
                MovieCategoriesListView(style: .List, movieCategory: MovieCatrgoriesModel.dummyData)
                    .padding(.horizontal ,15)
                MovieSliderView { movie in
                    isShowingDetailsScreen = true
                }
                Spacer()
            }
            .navigationBarHidden(true)
        }
        .onAppear {
            isShowingDetailsScreen = nil
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
