//
//  SplashView.swift
//  petcaofome
//
//  Created by Student13 on 24/03/23.
//

import SwiftUI

struct SplashView: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack {
                    if self.isActive {
                        ContentView()
                    } else {
                        
                        Rectangle().fill(Color(
                        "lilas")).background(Color("lilas"))
                                        
                        VStack{
                            Image("logo_gato")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300)
                            
                            
                        
                        }
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 30  ) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
