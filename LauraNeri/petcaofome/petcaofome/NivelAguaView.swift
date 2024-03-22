//
//  NivelAguaView.swift
//  petcaofome
//
//  Created by Student13 on 24/03/23.
//

import SwiftUI

struct NivelAguaView: View {
    
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    @StateObject var viewModelAgua = ViewModelAgua()
    
    //@State private var waterLevel: Float = Float(viewModelAgua.agua.nivelDeAgua)
    
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
                            Text("Nível de água")
                                .font(.title2)
                                .foregroundColor(.black)
                            Image(systemName: "plus")
                                .font(.title2)
                                .foregroundColor(.black)
                        }
                        HStack{
                            Image(systemName: "drop.fill")
                                .foregroundColor(.black)
                           
                           
                            ProgressView("\(Float(viewModelAgua.agua.nivelDeAgua), specifier: "%.2f")%", value: Float(viewModelAgua.agua.nivelDeAgua), total: 100)
                            
                                .scaledToFit()
                                .frame(width: 200, height: 300)
                                .foregroundColor(.black)
                        }
                }//barrinha de nivel de agua
                .accentColor(.black)
                .shadow(color: Color("sombra_amarelo")
                        , radius: 20)
                
            }//conteudo
            .zIndex(1)
        }
        .onAppear{
            Timer.scheduledTimer( withTimeInterval: 2.5, repeats: true){timer in
                viewModelAgua.fetch()
                
            }
            
        }
    }
}

struct NivelAguaView_Previews: PreviewProvider {
    static var previews: some View {
        NivelAguaView()
    }
}
