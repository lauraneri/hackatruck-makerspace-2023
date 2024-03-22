//
//  BemVindoFulano.swift
//  aula01_lauraneri_noturno
//
//  Created by Student13 on 02/03/23.
//

import SwiftUI

struct BemVindoFulano: View {
    @State var name: String = ""
    @State var showingAlert = false
    
    var body: some View {
        ZStack{
            Image("bg")
                .resizable()
                .scaledToFill()
                .blur(radius: 2)
                .opacity(0.19)
                .padding(-35)
                .zIndex(0)
            
            
            VStack{
                VStack{
                    Text("Bem vindo, \(name)")
                        .font(.largeTitle)
                        .zIndex(1)
                    TextField("neri",text: $name)
                        .fixedSize()
                        .frame(width: 200)
                        .foregroundColor(.black)
                    
                }
                
                
                //Spacer()
                VStack{
                    Spacer()
                    Image("logo").resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .padding(-60)
                        .shadow(radius:10)
                    Image("truck").resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .padding(-60)
                        .shadow(radius: 10)
                    Spacer()
                }
                .zIndex(2)
                //Spacer()
                Button("Entrar"){
                    showingAlert = true
                }
                //.alert("Ihuk")
                    //.zIndex(1)
            }
        }
        
    }
}


struct BemVindoFulano_Previews: PreviewProvider {
    static var previews: some View {

        BemVindoFulano(name:"")
    }
}
