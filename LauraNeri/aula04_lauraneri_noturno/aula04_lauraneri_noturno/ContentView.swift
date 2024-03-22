//
//  ContentView.swift
//  aula04_lauraneri_noturno
//
//  Created by Student13 on 06/03/23.
//

import SwiftUI

struct ContentView: View {
    
    var musicas = [Musica(capa: "https://i.scdn.co/image/ab67616d00001e023dcf67594e3c4f8f2dba0b82", nome: "True intention", artista: "たかやん"),
                   Musica(capa:"https://midistax.com/media/artwork/C/0/Z/X/0/C0ZX0ES2S81YKJV7WKY2PS2N.view.jpeg", nome: "YES MOM", artista: "Tessa Violet"),
    Musica(capa: "https://akamai.sscdn.co/uploadfile/letras/albuns/4/d/5/1/776711567799124.jpg", nome: "Tapping Out", artista: "Issues"),
    Musica(capa: "https://i.scdn.co/image/ab67616d0000b273fc3cfe261f9733788818bec3", nome: "onion boy", artista: "Isaac Dunbar")
    ]
    
    var sugestoes = [Sugestao(capa: "https://lastfm.freetls.fastly.net/i/u/ar0/a3969ffb1a2de2b6db2a016f490c91af.jpg", nome: "GOTTASADAE - BewhY"),
    Sugestao(capa: "https://i.scdn.co/image/ab67616d0000b273f40b377328f8614879cdd29d", nome: "Happy Pills - Weathers"),
    Sugestao(capa: "https://akamai.sscdn.co/uploadfile/letras/albuns/6/a/7/5/1077961621013707.jpg", nome: "Kazino - BIBI"),
    Sugestao(capa: "https://i.scdn.co/image/ab67616d0000b2735149c948fde506624246a684", nome: "Dear Diary, - Bring Me The Horizon")]
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    
                    LinearGradient(gradient: Gradient(colors: [.blue, .black, .black]), startPoint: .top, endPoint: .bottom)
                        .ignoresSafeArea()
                } //gradiente background
                .zIndex(0)
                
                ScrollView{
                    VStack{
                        VStack{
                            AsyncImage(url: URL(string: "https://pbs.twimg.com/media/Fo8tymOaYAA9BMd?format=jpg&name=medium")) { image in
                                image
                                    .resizable()
                                    .aspectRatio(1, contentMode: .fit)
                                    .clipShape(Rectangle())
                                
                            } placeholder: {
                                Color.black
                            }
                            .frame(width: 250, height: 250)
                        } //img da playlist
                        
                        
                        
                        VStack(alignment: .leading){
                            Text("Playlist legal")
                                .font(.system(size: 35, weight: .heavy, design: .default))
                                .foregroundColor(.white)
                            
                            
                            VStack(alignment: .leading){
                                HStack{
                                    AsyncImage(url: URL(string: "https://pbs.twimg.com/media/Fo8tymOaYAA9BMd?format=jpg&name=medium")) { image in
                                        image
                                            .resizable()
                                            .aspectRatio(1, contentMode: .fit)
                                            .clipShape(Rectangle())
                                        
                                    } placeholder: {
                                        Color.black
                                    }
                                    .frame(width: 25, height: 25)
                                    
                                    Text("nerineri")
                                        .font(.system(size: 18, weight: .heavy, design: .default))
                                        .foregroundColor(.white)
                                    
                                    
                                }
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            
                            
                        } // nome da playlist + img com nome do usuario
                        
                        .padding(.bottom, 25)
                        
                        ForEach(musicas) { musica in
                
                            NavigationLink(destination: MusicaView(song: musica)){
                                VStack(alignment: .leading){
                                    
                                    HStack(){
                                        AsyncImage(url: URL(string: musica.capa)) { image in
                                            image
                                                .resizable()
                                                .aspectRatio(1, contentMode: .fit)
                                                .clipShape(Rectangle())
                                            
                                        } placeholder: {
                                            Color.black
                                        }
                                        .frame(width: 55, height: 55)
                                        
                                        VStack(alignment: .leading){
                                            Text(musica.nome)
                                                .font(.system(size: 18.5, weight: .heavy, design: .default))
                                                .foregroundColor(.white)
                                                .padding(0.7)
                                            
                                            Text(musica.artista)
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
                        
                        
                        
                            
                            VStack(alignment: .leading){
                                VStack{
                                    Text("Sugeridos")
                                        .font(.system(size: 35, weight: .heavy, design: .default))
                                        .foregroundColor(.white)
                                    
                                }
                                
                                
                                    
                                ScrollView(.horizontal){
                                    HStack{
                                    ForEach(sugestoes) { sugestao in
                                        
                                            VStack{
                                                AsyncImage(url: URL(string: sugestao.capa)) { image in
                                                    image
                                                        .resizable()
                                                        .aspectRatio(1, contentMode: .fit)
                                                        .clipShape(Rectangle())
                                                    
                                                } placeholder: {
                                                    Color.black
                                                }
                                                .frame(width: 250, height: 250)
                                                
                                                Text(sugestao.nome)
                                                    .font(.system(size: 18, weight: .heavy, design: .default))
                                                    .foregroundColor(.white)
                                            }//musica sugerida
                                        }
                                    }
                                } //sugeridos
                        }
                        
                    } //corpo todo
                    .zIndex(1)
                    .padding(30)
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//ForEach(array){song in
    
//}


//LazyHGrid()
