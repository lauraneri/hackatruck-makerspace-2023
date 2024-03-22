//
//  CameraView.swift
//  petcaofome
//
//  Created by Student13 on 24/03/23.
//

import SwiftUI

struct CameraView: View {
    @StateObject var viewModelCamera = ViewModelCamera()
    
    var body: some View {
        ZStack{
                VStack{
                    Rectangle().fill(Color(
                                    "lilas")).background(Color("lilas"))
                }//background
                .zIndex(0)
            
            VStack{
                VStack{
                    
                    AsyncImage(url: URL(string: viewModelCamera.img.image_link)) { image in
                        image
                            .resizable()
                            .aspectRatio(1, contentMode: .fit)
                            .clipShape(Rectangle())

                    } placeholder: {
                        Color.black
                    }
                    .frame(width: 400, height: 400)
                    
                    
                }//camera
            }//conteudo
        }
        .onAppear{
            Timer.scheduledTimer( withTimeInterval: 2.5, repeats: true){timer in
                viewModelCamera.fetch()
                
            }
            
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
