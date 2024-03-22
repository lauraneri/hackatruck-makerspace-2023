//
//  Musica.swift
//  aula04_lauraneri_noturno
//
//  Created by Student13 on 06/03/23.
//

import Foundation

struct Sugestao: Identifiable{
    var id = UUID()
    var capa: String
    var nome: String
}

struct Musica: Identifiable{
    var id = UUID()
    var capa: String
    var nome: String
    var artista: String
}
