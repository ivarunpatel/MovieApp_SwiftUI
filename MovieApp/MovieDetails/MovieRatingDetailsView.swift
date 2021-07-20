//
//  MovieRatingDetailsView.swift
//  MovieApp
//
//  Created by Varun on 19/07/21.
//

import SwiftUI

struct MovieRatingDetailsView: View {
    let movieDetails: MovieDetailsModel
    var body: some View {
        HStack(alignment: .top) {
            Spacer()
            VStack(spacing: 2) {
                Image.starFill
                    .foregroundColor(Color.starYellow)
                Text("\(movieDetails.imdbRating.averageRating, specifier: "%.1f")/\(movieDetails.imdbRating.outOf)")
                    .font(Font.Nunito.regular(size: 13))
                Text("\(movieDetails.imdbRating.totalRating)")
                    .font(Font.Nunito.regular(size: 10))
                    .foregroundColor(.lightPurple)
                
            }
            .padding(.top, 10)
            
            Spacer()
            
            VStack(spacing: 0) {
                Image.star
                Text("Rate this")
                    .font(Font.Nunito.regular(size: 13))
            }
            .padding(.top, 10)
            
            Spacer()
            
            VStack(spacing: 2) {
                Text("\(movieDetails.metaScore.score)")
                    .font(Font.Nunito.regular(size: 12))
                    .padding(.all, 4)
                    .background(Color.lightGreen)
                    .foregroundColor(.white)
                    .cornerRadius(4)
                Text("Metascore")
                    .font(Font.Nunito.regular(size: 13))
                Text("\(movieDetails.metaScore.criticRating) critic rating")
                    .font(Font.Nunito.regular(size: 10))
                    .foregroundColor(.lightPurple)
                
            }
            .padding(.top, 10)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: 80)
        .background(Color.white)
        .cornerRadius(radius: 30, corners: [.topLeft, .bottomLeft])
        .padding(.leading, 30)
        .offset(x: 0, y: 100)
        .shadow(color: .black.opacity(0.2), radius: 10, x: -2, y: 2)
    }
}

struct MovieRatingDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieRatingDetailsView(movieDetails: MovieDetailsModel.dummyData)
    }
}
