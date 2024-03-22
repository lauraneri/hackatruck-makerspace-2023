//
//  SwiftUIView.swift
//  aula01_lauraneri_noturno
//
//  Created by Student13 on 01/03/23.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack {
            VStack{
                Image("punkcat")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
            }
            Spacer()
            VStack{
                Text("PUNK CAT")
                    .font(.largeTitle
                        .bold()
                    )
                    .foregroundColor(.purple)
                HStack{
                    Text("The")
                        .font(.title.bold())
                        .foregroundColor(.blue)
                    Text("Cat")
                        .font(.title .bold())
                        .foregroundColor(Color(hue: 1.0, saturation: 0.978, brightness: 0.922))
                        }
            }
        }
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
