//
//  MovieDetailsInfoView.swift
//  MovieApp
//
//  Created by Varun on 19/07/21.
//

import SwiftUI

struct MovieDetailsInfoView: View {
    let movieDetails: MovieDetailsModel
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(movieDetails.title)
                        .foregroundColor(Color.nevyBlue)
                        .font(Font.Nunito.bold(size: 22))
                    HStack(spacing: 20) {
                        Text("\(movieDetails.releaseYear)")
                        Text("\(movieDetails.parentalGuide)")
                        Text("\(movieDetails.runningTime)")
                    }
                    .foregroundColor(.lightPurple)
                    .font(Font.Nunito.regular(size: 14))
                    
                    MovieCategoriesListView(style: .Details, movieCategory: movieDetails.categories)
                }
                Button(action: {
                    
                }, label: {
                    Image.plus
                        .frame(width: 50, height: 50)
                        .background(Color.pinkColor)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                })
            }
            VStack(alignment: .leading, spacing: 8) {
                Text("Plot Summary")
                    .foregroundColor(Color.nevyBlue)
                    .font(Font.Nunito.semiBold(size: 18))
                Text(movieDetails.summary)
                    .fixedSize(horizontal: false, vertical: true)
                    .foregroundColor(Color.nevyBlue)
                    .font(Font.Nunito.regular(size: 12))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 15)
    }
}

struct MovieDetailsInfoView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsInfoView(movieDetails: MovieDetailsModel.dummyData)
    }
}
