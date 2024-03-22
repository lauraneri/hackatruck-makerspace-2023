//
//  AnimeModel.swift
//  AnimeRecomendations
//
//  Created by Student13 on 16/03/23.
//

import Foundation

struct Character: Codable, Hashable{
    let name: String
    let voice_actor: String
    let face: String
}

struct Anime: Codable, Hashable {
    let anime: String
    let image: String
    let characters: [Character]
}

class ViewModel : ObservableObject {
    @Published var a = [Anime]()
    
    func fetch(){
        guard let url = URL(string: "http://127.0.0.1:1880/listaranimes") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){[weak self] data, _, error in
            
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Anime].self, from: data)
                
                DispatchQueue.main.async{
                    self?.a = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}
