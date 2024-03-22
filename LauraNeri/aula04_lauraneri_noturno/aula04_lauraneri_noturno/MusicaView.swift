//
//  MusicaView.swift
//  aula04_lauraneri_noturno
//
//  Created by Student13 on 06/03/23.
//

import SwiftUI

struct MusicaView : View {
    
    var song: Musica
    
    var body: some View {
        ZStack{
            VStack{
                LinearGradient(gradient: Gradient(colors: [.blue, .black, .black]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
            } //gradiente background
            .zIndex(0)
            
            VStack{
                Spacer()
                VStack{
                    VStack{
                        AsyncImage(url: URL(string: song.capa)) { image in
                            image
                                .resizable()
                                .aspectRatio(1, contentMode: .fit)
                                .clipShape(Rectangle())
                            
                        } placeholder: {
                            Color.black
                        }
                        .frame(width: 250, height: 250)
                    }//img musica
                    VStack{
                        VStack(alignment: .center){
                            Text(song.nome)
                                .font(.system(size: 25, weight: .heavy, design: .default))
                                .foregroundColor(.white)
                                .padding(0.7)
                            
                            Text(song.artista)
                                .font(.system(size: 19, weight: .heavy, design: .default))
                                .foregroundColor(.white)
                        }
                    }//nome musica e artista
                } //img e nome musica
                Spacer()
                VStack{
                    HStack{
                        Image(systemName: "shuffle")
                            .foregroundColor(.white)
                            .scaleEffect(2)
                        Spacer()
                        
                        Image(systemName: "backward.end.fill")
                            .foregroundColor(.white)
                            .scaleEffect(2)
                        Spacer()
                        
                        Image(systemName: "play.fill")
                            .foregroundColor(.white)
                            .scaleEffect(3)
                        Spacer()
                        
                        Image(systemName: "forward.end.fill")
                            .foregroundColor(.white)
                            .scaleEffect(2)
                        Spacer()
                        
                        Image(systemName: "repeat")
                            .foregroundColor(.white)
                            .scaleEffect(2)
                        
                    } //botoes
                }//botoes
                Spacer()
                    
            }//corpo todo
            .zIndex(1)
            .padding(30)
        }
        
       
        
    }
}

struct MusicaView_Previews: PreviewProvider {
           static var previews: some View {
              let m = Musica(capa: "https://i.scdn.co/image/ab67616d00001e023dcf67594e3c4f8f2dba0b82", nome: "True intention", artista: "たかやん")
               MusicaView(song: m)
           }
       }
