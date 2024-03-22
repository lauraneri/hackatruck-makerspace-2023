//
//  GreenView.swift
//  aula03_lauraneri_noturno
//
//  Created by Student13 on 03/03/23.
//

import SwiftUI

struct GreenView: View {
    var body: some View {
        Color.green
            .ignoresSafeArea(.all, edges: .top)
    }
}

struct GreenView_Previews: PreviewProvider {
    static var previews: some View {
        GreenView()
    }
}
