//
//  RedView.swift
//  aula03_lauraneri_noturno
//
//  Created by Student13 on 03/03/23.
//

import SwiftUI

struct RedView: View {
    var body: some View {
        Color.red
            .ignoresSafeArea(.all, edges: .top)
    }
}

struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        RedView()
    }
}
