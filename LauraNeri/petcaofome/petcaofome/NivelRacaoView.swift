//
//  NivelRacaoView.swift
//  petcaofome
//
//  Created by Student13 on 24/03/23.
//

import SwiftUI

struct NivelRacaoView: View {
    
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    @StateObject var viewModelRacao = ViewModelRacao()
    
    var body: some View {
        ZStack{
            VStack{
                Rectangle().fill(Color(
                                "lilas")).background(Color("lilas"))
            }//background
            .zIndex(0)
            
            VStack{
                
                VStack{
                        HStack{
                            Text("Nível de ração")
                                .font(.title2)
                                .foregroundColor(.black)
                            Image(systemName: "plus")
                                .font(.title2)
                                .foregroundColor(.black)
                        }
                        HStack{
                            Image(systemName: "drop.fill")
                                .foregroundColor(.black)
                            ProgressView("\(viewModelRacao.racao.nivelDeRacao, specifier: "%.2f")%", value: Float(viewModelRacao.racao.nivelDeRacao), total: 100)
                            
                                .scaledToFit()
                                .frame(width: 200, height: 300)
                                .foregroundColor(.black)
                            
                        }
                }//barrinha de nivel de racao
                .accentColor(.black)
                .shadow(color: Color("sombra_amarelo")
                        , radius: 20)
                
            }//conteudo
            .zIndex(1)
        }
        .onAppear{
            Timer.scheduledTimer( withTimeInterval: 2.5, repeats: true){timer in
                viewModelRacao.fetch()
                
            }
            
        }
    }
}

struct NivelRacaoView_Previews: PreviewProvider {
    static var previews: some View {
        NivelRacaoView()
    }
}
