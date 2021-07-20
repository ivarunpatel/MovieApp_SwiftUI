//
//  MovieDetailsView.swift
//  MovieApp
//
//  Created by Varun on 07/07/21.
//

import SwiftUI

struct MovieDetailsView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    let movieDetails: MovieDetailsModel
    
    var body: some View {
        VStack {
            MovieDetailsNavigationView( didTapBackButton: {
                presentationMode.wrappedValue.dismiss()
            })
            ScrollView {
                Image(movieDetails.landscapePosterImage)
                    .cornerRadius(radius: 50, corners: [.bottomLeft])
                    .overlay(
                        MovieRatingDetailsView(movieDetails: movieDetails)
                    )
                    .padding(.bottom, 50)
                VStack(spacing: 10) {
                    MovieDetailsInfoView(movieDetails: movieDetails)
                    MovieDetailsCastAndCrewView(movieDetails: movieDetails)
                }
            }
        }
        .frame(maxWidth: .infinity)
        .navigationBarHidden(true)
    }
}

struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView(movieDetails: MovieDetailsModel.dummyData)
    }
}
