//
//  ContentView.swift
//  aula05_lauraneri_noturno
//
//  Created by Student13 on 07/03/23.
//

import SwiftUI
import MapKit


struct ContentView: View {
    
    let locations = [
        Localizacao(name: "Brasil", coordinate: CLLocationCoordinate2D(latitude: -22.0185361, longitude: -47.9310768)),
        Localizacao(name: "EUA", coordinate: CLLocationCoordinate2D(latitude: 37.1843263, longitude: -123.7969943)),
        Localizacao(name: "Austrália", coordinate: CLLocationCoordinate2D(latitude: -25.0289668, longitude: 115.1976068))
    ]
    
    @State private var region = MKCoordinateRegion(
                    center: CLLocationCoordinate2D(
                        latitude: -22.0185361,
                        longitude: -47.9310768),
                    span: MKCoordinateSpan(
                        latitudeDelta: 0.2,
                        longitudeDelta: 0.2)
                    )
    
    var body: some View {
        VStack{
            VStack{
                Map(coordinateRegion: $region, annotationItems: locations){
                    location in
                    MapMarker(coordinate: location.coordinate)
                }
                            .ignoresSafeArea(.all)
                            .aspectRatio(1, contentMode: .fit)
            }//mapa
            Spacer()
            VStack{
                Button("Brasil"){
                    region = MKCoordinateRegion(
                                    center: CLLocationCoordinate2D(
                                        latitude: -22.0185361,
                                        longitude: -47.9310768),
                                    span: MKCoordinateSpan(
                                        latitudeDelta: 0.2,
                                        longitudeDelta: 0.2)
                                    )
                }//botao brasil
                .font(.title)
                .padding(5)
                Button("EUA"){
                    region = MKCoordinateRegion(
                                    center: CLLocationCoordinate2D(
                                        latitude: 37.1843263,
                                        longitude: -123.7969943),
                                    span: MKCoordinateSpan(
                                        latitudeDelta: 20,
                                        longitudeDelta: 20)
                                    )
                }//botao eua
                .font(.title)
                .padding(5)
                Button("Austrália"){
                    region = MKCoordinateRegion(
                                    center: CLLocationCoordinate2D(
                                        latitude: -25.0289668,
                                        longitude: 115.1976068),
                                    span: MKCoordinateSpan(
                                        latitudeDelta: 30,
                                        longitudeDelta: 30)
                                    )
                }//botao australia
                .font(.title)
                .padding(5)
            }//botoes
            Spacer()
        }//corpo todo
        Map(coordinateRegion: $region)
                    .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
