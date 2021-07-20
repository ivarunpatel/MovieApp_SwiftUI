//
//  HomeHorizontalMenuView.swift
//  MovieApp
//
//  Created by Varun on 07/07/21.
//

import SwiftUI

struct HomeHorizontalMenuView: View {
    @State private var selectedIndex: Int = 0
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            ScrollViewReader { scrollReader in
                LazyHStack(spacing: 20) {
                    ForEach(0..<HomeHorizontalMenu.dummyData.count) { index in
                        VStack(alignment: .leading) {
                            Text(HomeHorizontalMenu.dummyData[index].title)
                                .foregroundColor(selectedIndex == index ? .nevyBlue : .lightPurple)
                                .font(Font.Nunito.extraBold(size: 24))
                            
                            Capsule()
                                .foregroundColor(selectedIndex == index ? .pinkColor : .clear)
                                .frame(width: 40, height: 6, alignment: .leading)
                            
                        }
                        .id(HomeHorizontalMenu.dummyData[index].title)
                        .onTapGesture {
                            selectedIndex = index
                        }
                    }
                }
                .onChange(of: selectedIndex, perform: { value in
                    withAnimation{
                        scrollReader.scrollTo(HomeHorizontalMenu.dummyData[value].title)
                    }
                })
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 60)
        .padding(15)
    }
}

struct HomeHorizontalMenuView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHorizontalMenuView()
    }
}
