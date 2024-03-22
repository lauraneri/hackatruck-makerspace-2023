//
//  YellowView.swift
//  aula03_lauraneri_noturno
//
//  Created by Student13 on 03/03/23.
//

import SwiftUI

struct YellowView: View {
    var body: some View {
        Color.yellow
        
            .ignoresSafeArea(.all, edges: .top)
    }
}

struct YellowView_Previews: PreviewProvider {
    static var previews: some View {
        YellowView()
    }
}
