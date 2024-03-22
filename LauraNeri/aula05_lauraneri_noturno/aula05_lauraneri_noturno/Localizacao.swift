//
//  Localizacao.swift
//  aula05_lauraneri_noturno
//
//  Created by Student13 on 07/03/23.
//

import Foundation
import MapKit

struct Localizacao: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}
