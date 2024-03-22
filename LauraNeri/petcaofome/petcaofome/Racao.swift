//
//  Racao.swift
//  petcaofome
//
//  Created by Student13 on 30/03/23.
//

import Foundation

struct Racao: Codable, Hashable{
    let nivelDeRacao : Float
}

class ViewModelRacao : ObservableObject {
    @Published var racao = Racao(nivelDeRacao: 0.0)
    
    func fetch(){
        guard let url = URL(string: "http://192.168.128.243:1880/petcaofome/racao") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){[weak self] data, _, error in
            
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode(Racao.self, from: data)
                
                DispatchQueue.main.async{
                    self?.racao = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}

