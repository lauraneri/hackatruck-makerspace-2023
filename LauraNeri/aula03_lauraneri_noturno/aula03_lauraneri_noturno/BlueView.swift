//
//  BlueView.swift
//  aula03_lauraneri_noturno
//
//  Created by Student13 on 03/03/23.
//

import SwiftUI

struct BlueView: View {
    var body: some View {
        Color.blue
            .ignoresSafeArea(.all, edges: .top)
    }
}

struct BlueView_Previews: PreviewProvider {
    static var previews: some View {
        BlueView()
    }
}
