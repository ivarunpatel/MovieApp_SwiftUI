//
//  HomeNavigationView.swift
//  MovieApp
//
//  Created by Varun on 07/07/21.
//

import SwiftUI

struct HomeNavigationView: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Image.menu
            })
            Spacer()
            Button(action: {
                
            }, label: {
                Image.search
            })
        }
        .foregroundColor(.nevyBlue)
        .frame(maxWidth: .infinity, maxHeight: 20)
        .padding(15)
    }
}

struct HomeNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        HomeNavigationView()
            .previewLayout(.sizeThatFits)
    }
}
