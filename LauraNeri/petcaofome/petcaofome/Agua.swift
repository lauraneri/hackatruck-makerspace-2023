//
//  Agua.swift
//  petcaofome
//
//  Created by Student13 on 30/03/23.
//

import Foundation

struct Agua: Codable, Hashable{
    let nivelDeAgua : Int
}

class ViewModelAgua : ObservableObject {
    @Published var agua = Agua(nivelDeAgua: 0)
    
    func fetch(){
        guard let url = URL(string: "http://192.168.128.243:1880/petcaofome/agua") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){[weak self] data, _, error in
            
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode(Agua.self, from: data)
                
                DispatchQueue.main.async{
                    self?.agua = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}
