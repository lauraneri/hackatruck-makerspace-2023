//
//  ContentView.swift
//  AnimeRecomendations
//
//  Created by Student13 on 16/03/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        ZStack{
            VStack{
                LinearGradient(gradient: Gradient(colors: [.purple, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
            }//background
            .zIndex(0)
            
            ScrollView{
                VStack{
                    
                    VStack{
                        Text("Recomendações de anime :)")
                            .font(.system(size: 35, weight: .heavy, design: .default))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        Spacer()
                    }//título
                    .padding(50)
                    
                    VStack{
                        ForEach(viewModel.a, id: \.self) { anime in
                
                            NavigationLink(destination: AnimeInfoView(anime: anime)){
                                VStack(alignment: .leading){
                                    
                                    HStack(){
                                        AsyncImage(url: URL(string: anime.image)) { image in
                                            image
                                                .resizable()
                                                .aspectRatio(1, contentMode: .fit)
                                                .clipShape(Rectangle())
                                            
                                        } placeholder: {
                                            Color.black
                                        }
                                        .frame(width: 55, height: 55)
                                        
                                        VStack(alignment: .leading){
                                            Text(anime.anime)
                                                .font(.system(size: 18.5, weight: .heavy, design: .default))
                                                .foregroundColor(.white)
                                                .padding(0.7)
                                            
                                            Text("aaa")
                                                .font(.system(size: 17, weight: .heavy, design: .default))
                                                .foregroundColor(.white)
                                        }
                                        
                                        Spacer()
                                        Button {
                                            
                                        } label: {
                                            Image(systemName: "ellipsis")
                                                .foregroundColor(.white)
                                        }
                                    }
                                } //modelo musica
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }//modelo musica com link
                        } //laco de repeticao com todas as musicas da playlist
                    }
                    
                }//conteúdo
            }
            .zIndex(1)
        }//tudo
        .onAppear(){
            viewModel.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
