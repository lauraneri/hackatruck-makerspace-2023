//
//  SwiftUIView2.swift
//  aula01_lauraneri_noturno
//
//  Created by Student13 on 01/03/23.
//

import SwiftUI

struct SwiftUIView2: View {
    var body: some View {
        VStack {
            VStack{
                Image("punkcat")
                    .resizable()
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
            }
            Spacer()
            VStack{
                Image("punkcat")
                    .resizable()
                    .imageScale(.small)
                    .clipShape(Circle())
                    .foregroundColor(.accentColor)
                    .padding(25)
                    .overlay(
                        VStack{
                            Spacer()
                            Text("PUNK CAT")
                            .font(.largeTitle
                                .bold()
                            )
                            .foregroundColor(.purple)
                            Spacer()
                            Spacer()
                        })
            }
            VStack{
                HStack{
                    Text("The")
                        .font(.title.bold())
                        .foregroundColor(.blue)
                    Text("Cat")
                        .font(.title .bold())
                        .foregroundColor(Color(hue: 1.0, saturation: 0.978, brightness: 0.922))
                        }
            }
            .padding(80)
            .background(Color.black)
        }
        
    }
}

struct SwiftUIView2_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView2()
    }
}
