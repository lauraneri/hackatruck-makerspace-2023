//
//  ContentView.swift
//  aula03_lauraneri_noturno
//
//  Created by Student13 on 03/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            PurpleView()
                .tabItem{
                    Label("Roxinho", systemImage: "books.vertical.fill")
                }
            
            BlueView()
                .tabItem{
                    Label("Azulzul", systemImage: "book.closed.fill")
                }
            
            GreenView()
                .tabItem{
                    Label("Verdin", systemImage: "bookmark.circle.fill")
                }
            
            RedView()
                .tabItem{
                    Label("Vermeio", systemImage: "person.fill.turn.down")
                }
            
            YellowView()
                .tabItem{
                    Label("Marelo", systemImage: "figure.curling")
                }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
