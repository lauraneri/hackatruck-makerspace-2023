//
//  PurpleView.swift
//  aula03_lauraneri_noturno
//
//  Created by Student13 on 03/03/23.
//

import SwiftUI

struct PurpleView: View {
    var body: some View {
        VStack{
            Color.purple
                .ignoresSafeArea(.all, edges: .top)
        }
        
    }
}

struct PurpleView_Previews: PreviewProvider {
    static var previews: some View {
        PurpleView()
    }
}
