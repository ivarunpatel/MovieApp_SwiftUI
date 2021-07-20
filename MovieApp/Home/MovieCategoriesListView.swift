//
//  MovieCategoriesListView.swift
//  MovieApp
//
//  Created by Varun on 14/07/21.
//

import SwiftUI

struct MovieCategoriesListView: View {
    
    enum MovieCategoriesStyle {
        case List
        case Details
    }
    
    @State private var selectedIndex: Int = 0
    let style: MovieCategoriesStyle
    let movieCategory: [MovieCatrgoriesModel]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            ScrollViewReader { scrollReader in
                LazyHStack(spacing: 15) {
                    ForEach(0..<movieCategory.count) { index in
                        VStack(alignment: .leading) {
                            Text(movieCategory[index].title)
                                .font(Font.Nunito.regular(size: style == .List ? 18 : 14))
                                .foregroundColor(selectedIndex == index && style == .List ? .white : .nevyBlue)
                        }
                        .id(movieCategory[index].title)
                        .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                        .background(Capsule()
                                        .fill(selectedIndex == index && style == .List ? Color.nevyBlue : Color.white)
                                        .overlay(Capsule()
                                                    .stroke(selectedIndex == index && style == .List ? Color.clear : Color.lightPurple))
                        )
                        .onTapGesture {
                            selectedIndex = index
                        }
                    }
                }
                .onChange(of: selectedIndex, perform: { value in
                    withAnimation{
                        scrollReader.scrollTo(movieCategory[value].title)
                    }
                })
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 40)
        .padding(.vertical, 5)
        .padding(.horizontal, 2)
    }
}

struct MovieCategoriesListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieCategoriesListView(style: .List, movieCategory: MovieCatrgoriesModel.dummyData)
    }
}
