//
//  MovieDetailsNavigationView.swift
//  MovieApp
//
//  Created by Varun on 19/07/21.
//

import SwiftUI

struct MovieDetailsNavigationView: View {
    
    typealias BackButtonHandler = () -> Void
    
    let didTapBackButton: BackButtonHandler
    init(didTapBackButton: @escaping BackButtonHandler) {
        self.didTapBackButton = didTapBackButton
    }
    
    var body: some View {
        HStack {
            Button(action: {
                didTapBackButton()
            }, label: {
                Image.back
            })
            Spacer()
        }
        .font(Font.Nunito.semiBold(size: 24))
        .foregroundColor(.nevyBlue)
        .frame(maxWidth: .infinity, maxHeight: 20)
        .padding(15)
    }
}

struct MovieDetailsNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsNavigationView(didTapBackButton: { })
    }
}
