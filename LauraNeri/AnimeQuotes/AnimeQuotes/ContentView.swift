//
//  ContentView.swift
//  AnimeQuotes
//
//  Created by Student13 on 15/03/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        ZStack{
            VStack{
                LinearGradient(gradient: Gradient(colors: [.purple, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
            }//gradiente background
            .zIndex(0)
            
            VStack{
                VStack{
                    Text(viewModel.q.quote)
                    //Text("Frase legal")
                        .font(.system(size: 30, weight: .heavy, design: .default))
                        .foregroundColor(.white)
                    
                    VStack{
                        Text(viewModel.q.character ?? "")
                        //Text("nome do cara")
                            .font(.system(size: 18.5, weight: .heavy, design: .default))
                            .foregroundColor(.white)
                            .padding(0.7)
                        Text(viewModel.q.anime ?? "")
                        //Text("nome do anime")
                            .font(.system(size: 17, weight: .heavy, design: .default))
                            .foregroundColor(.white)
                    }//nome do personagem e anime
                    .padding(20)
                }//quote + nome do personagem e anime
                .padding(50)
                
                VStack{
                    
                    Button("Quote"){
                        viewModel.fetch()
                    }
                    .font(.system(size: 35, weight: .heavy, design: .default))
                    .foregroundColor(.white)
                }//botao
            }//conteúdo
            .zIndex(1)
        }//corpo todo
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
