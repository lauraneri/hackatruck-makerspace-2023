//
//  AnimeInfoView.swift
//  AnimeRecomendations
//
//  Created by Student13 on 16/03/23.
//

import SwiftUI

struct AnimeInfoView: View {
    var anime: Anime
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AnimeInfoView_Previews: PreviewProvider {
    static var previews: some View {
        let a = Anime(anime: "", image: "", characters: [Character]())
        AnimeInfoView(anime: a)
    }
}
