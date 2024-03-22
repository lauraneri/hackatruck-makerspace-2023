//
//  ContentView.swift
//  aula02_lauraneri_noturno
//
//  Created by Student13 on 02/03/23.
//

import SwiftUI

struct ContentView: View {
    @State var cor: String = ""
    @State var peso: Double = 0
    @State var altura: Double = 0
    @State var imc: Double = 0
    
    var body: some View {
        VStack {
            Text("Calculadora de IMC") .font(.title)
            VStack{
                TextField("", value: $peso, format: .number)
                    .fixedSize()
                    .frame(width: 200)
                    .foregroundColor(.black)
                    .padding(10)
                    .background(Color.white)
                TextField("", value: $altura, format: .number)
                    .fixedSize()
                    .frame(width: 200)
                    .foregroundColor(.black)
                    .padding(10)
                    .background(Color.white)
                Button("Calcular"){
                    imc = peso/(altura*altura)
                    
                    if (imc < 18.5) {
                        cor = "Baixo Peso"
                    } else if (imc >= 18.5 && imc < 25){
                        cor = "Normal"
                    } else if (imc >= 25 && imc < 30){
                        cor = "Sobrepeso"
                    } else if (imc >= 30){
                        cor = "Obesidade"
                    }
                }
                .padding(20)
            }
            .padding(10)
            Spacer()
            VStack{
                Text(cor)
                    .font(.title)
            }
            Spacer()
            VStack{
                Image("tabela-IMC")
                    .resizable()
                    .scaledToFit()
                    .padding(-45)
                    .shadow(radius: 9)
            }
        }
        .padding(25)
        .background(Color(cor))
        
        
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
