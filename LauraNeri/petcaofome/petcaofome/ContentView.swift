//
//  ContentView.swift
//  petcaofome
//
//  Created by Student13 on 24/03/23.
//

import SwiftUI

struct ContentView: View {
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    @StateObject var viewModelCamera = ViewModelCamera()
    
    @StateObject var viewModelAgua = ViewModelAgua()
    
    @StateObject var viewModelRacao = ViewModelRacao()
    
    var body: some View {
        
        NavigationView(){
        ZStack{
            VStack{
                Rectangle().fill(Color(
                                "lilas")).background(Color("lilas"))
            }//background
            .zIndex(0)
            
            
                
                VStack{
                    Spacer()
                    NavigationLink(destination: CameraView()){
                        VStack{
                            
                            AsyncImage(url: URL(string: viewModelCamera.img.image_link)) { image in
                                image
                                    .resizable()
                                    .aspectRatio(1, contentMode: .fit)
                                    .clipShape(Rectangle())

                            } placeholder: {
                                Color.black
                            }
                            .frame(width: 190, height: 230)
                            
                            
                        }//camera
                    }
                    .accentColor(Color.black)
                    Spacer()
                    
                    NavigationLink(destination: NivelAguaView()){
                        VStack{
                            HStack{
                                Text("Nível de água")
                                    .font(.title2)
                                Image(systemName: "plus")
                                    .font(.title2)
                            }
                            HStack{
                                Image(systemName: "drop.fill")
                                    
                                ProgressView("\(viewModelAgua.agua.nivelDeAgua, specifier: "%.2f")%", value: Float(viewModelAgua.agua.nivelDeAgua), total: 100)
                                    
                                
                                    .scaledToFit()
                                    .frame(width: 200, height: 150)
                                
                            }
                        }//nivel de agua
                    }
                    .accentColor(.black)
                    .shadow(color: Color("sombra_amarelo")
                            , radius: 20)
                    
                    NavigationLink(destination: NivelRacaoView()){
                        VStack{
                            HStack{
                                Text("Nível de ração")
                                    .font(.title2)
                                Image(systemName: "plus")
                                    .font(.title2)
                            }
                            HStack{
                                Image(systemName: "drop.fill")
                                ProgressView("\(viewModelRacao.racao.nivelDeRacao, specifier: "%.2f")%", value: Float(viewModelRacao.racao.nivelDeRacao), total: 100)
                                
                                    .scaledToFit()
                                    .frame(width: 200, height: 150)
                                
                            }
                            
                        }//nivel de comida
                    }
                    .accentColor(.black)
                    .shadow(color: Color("sombra_amarelo")
                            , radius: 20)
                    Spacer()
                    
                }//conteudo
                .zIndex(1)
            }
            
        }
        .onAppear{
            Timer.scheduledTimer( withTimeInterval: 2.5, repeats: true){timer in
                viewModelCamera.fetch()
                viewModelAgua.fetch()
                viewModelRacao.fetch()
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
