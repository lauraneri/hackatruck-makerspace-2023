//
//  ContentView.swift
//  aula03desafio_lauraneri_noturno
//
//  Created by Student13 on 03/03/23.
//

import SwiftUI

struct ContentView: View {
    @State var sheet = false
    
    var body: some View {
        NavigationStack{
            NavigationLink("Modo 1"){
                Modo1View()
            }
            NavigationLink("Modo 2"){
                Modo2View()
            }
            Button("Modo 3"){
                sheet.toggle()
            }
            .sheet(isPresented: $sheet){
                Modo1View()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
