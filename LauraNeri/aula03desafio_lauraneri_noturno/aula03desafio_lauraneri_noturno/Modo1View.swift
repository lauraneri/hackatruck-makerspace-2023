//
//  Modo1View.swift
//  aula03desafio_lauraneri_noturno
//
//  Created by Student13 on 03/03/23.
//

import SwiftUI

struct Modo1View: View {
    var body: some View {
        Text("Laura Neri Thomaz da Silva")
        Text("BCC 022")
        Text("ICMC - USP")
        
        NavigationLink("Modo Secreto"){
            Modo3View()
        }
    }
}

struct Modo1View_Previews: PreviewProvider {
    static var previews: some View {
        Modo1View()
    }
}
