//
//  MovieDetailsCastAndCrewView.swift
//  MovieApp
//
//  Created by Varun on 19/07/21.
//

import SwiftUI

struct MovieDetailsCastAndCrewView: View {
    let movieDetails: MovieDetailsModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Cast & Crew")
                .foregroundColor(Color.nevyBlue)
                .font(Font.Nunito.semiBold(size: 18))
            ScrollView(.horizontal) {
                LazyHStack(spacing: 15) {
                    ForEach(movieDetails.castAndCrew) { actor in
                        VStack {
                            Image(actor.profilePicture)
                                .resizable()
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                            Text("\(actor.name)")
                                .lineLimit(2)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.nevyBlue)
                                .font(Font.Nunito.regular(size: 12))
                            Text("\(actor.name)")
                                .lineLimit(1)
                                .foregroundColor(Color.lightPurple)
                                .font(Font.Nunito.regular(size: 10))
                            Spacer()
                        }
                        .frame(width: 80, height: 120)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 120)
            }
        }
        .padding(.horizontal, 15)
        .frame(maxWidth: .infinity, maxHeight: 160)
    }
}

struct MovieDetailsCastAndCrewView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsCastAndCrewView(movieDetails: MovieDetailsModel.dummyData)
    }
}
